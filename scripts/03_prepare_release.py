# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.

"""
This script will prepare a release by:
- Generating the JSON and MO files for all language packages from PO files
- Update the contributors list
- Bumping the version
"""

# Standard library imports
import argparse
import configparser
import hashlib
import os
import re
import subprocess
import traceback
from pathlib import Path
from typing import List, Optional

# Third party imports
import polib
from jupyterlab_translate import api

from contributors import get_contributors_report

# Constants
HERE = Path(__file__).parent.resolve()
REPO_ROOT = HERE.parent
LANG_PACKS_PATH = REPO_ROOT / "language-packs"
JLAB_LOCALE_PATH = REPO_ROOT / "jupyterlab" / "locale"
JLAB_EXT_PATH = REPO_ROOT / "extensions"
LOCALE_FOLDER = "locale"
LC_MESSAGES_FOLDER = "LC_MESSAGES"
BUMP_CONFIG = ".bumpversion.cfg"
CONTRIBUTORS = "CONTRIBUTORS.md"
VERSION_REGEX = re.compile(r"\d+\.\d+\.post\d+")


def load_hash(package_dir: Path) -> str:
    """Read bump2version hash from package."""
    hash_value = None
    config_path = package_dir / BUMP_CONFIG
    if config_path.is_file():
        config = configparser.ConfigParser()
        config.read(config_path)

        hash_value = config.get("hash", "value", fallback=None)
        if not hash_value:
            hash_value = None

    return hash_value


def save_hash(package_dir: Path, hash_value: str) -> None:
    """Save the new hash value in bump2version configuration file."""
    config_path = package_dir / BUMP_CONFIG
    config = configparser.ConfigParser()

    if config_path.is_file():
        config.read(config_path)
        if not config.has_section("hash"):
            config.add_section("hash")
        config["hash"]["value"] = hash_value
        with open(config_path, "w") as fh:
            config.write(fh)


def create_hash(*files: Path) -> str:
    """Compute the hash value of file paths."""
    hasher = hashlib.sha256()
    for f in files:
        hasher.update(f.read_bytes())
    return hasher.hexdigest()


def is_updated_translation(po_file_paths: List[Path], package_dir: Path) -> bool:
    """Are the translations updated?

    Notes:
        If the package directory does not exist, it will be created using the
        language pack cookiecutter template.

    Args:
        po_file_paths: translations PO files
        package_dir: Package directory containing the PO file
    Returns:
        Whether the translations have been updated or not
    """
    old_hash = load_hash(package_dir)

    new_hash = create_hash(*po_file_paths)

    if old_hash is None:
        return True
    else:
        return old_hash != new_hash


def bumpversion(path: Path, new_version: Optional[str] = None) -> None:
    """Update the package version.

    Args:
        path: Package path
        release: Is the new version a release or a patch version.
    """
    if new_version:
        cmd_args = [
            "bump2version",
            "--allow-dirty",
            "--new-version",
            new_version,
            "build",
        ]
    else:
        cmd_args = ["bump2version", "--allow-dirty", "build"]

    subprocess.check_call(cmd_args, cwd=path)


def prepare_jupyterlab_lp_release(
    crowdin_key: str, new_version: Optional[str] = None
) -> None:
    """Prepare the JupyterLab Language Packages release

    Version are in format X.Y.postZ and by default Z will be bumped.

    Args:
        crowding_key: Crowdin API key
        new_version: [optional] New version of the package
    """
    # TODO upgrade from cookiecutter template

    # Minimal percentage needed to compile a PO file
    COMPILATION_THRESHOLD = 0

    # This assumes the JupyterLab folder is the source of truth for available locales
    for locale in sorted(filter(lambda i: i.is_dir(), JLAB_LOCALE_PATH.iterdir())):
        locale_name = locale.name.replace("_", "-")
        package_dir = LANG_PACKS_PATH / f"jupyterlab-language-pack-{locale_name}"

        # Bump the version
        if package_dir.exists():
            bumpversion(package_dir, new_version)
        else:
            if new_version is not None:
                api.create_new_language_pack(
                    LANG_PACKS_PATH,
                    locale.name,
                    version=new_version,
                )
            else:
                api.create_new_language_pack(LANG_PACKS_PATH, locale.name)

        try:
            all_po_files = [
                JLAB_LOCALE_PATH / locale / LC_MESSAGES_FOLDER / "jupyterlab.po"
            ] + [
                (
                    extension
                    / LOCALE_FOLDER
                    / locale.name
                    / LC_MESSAGES_FOLDER
                    / f"{extension.name}.po"
                )
                for extension in JLAB_EXT_PATH.iterdir()
            ]

            po_files = list(filter(lambda f: f.is_file(), all_po_files))

            # Check if PO files have been changed
            if is_updated_translation(po_files, package_dir):
                any_compiled = False

                # Compile the PO files above a given percentage
                for file in po_files:
                    po = polib.pofile(str(file))
                    percent_translated = po.percent_translated()

                    if percent_translated >= COMPILATION_THRESHOLD:
                        print(
                            locale_name,
                            file.stem,
                            f"{percent_translated}%",
                            "compiling...",
                        )
                        api.compile_language_pack(REPO_ROOT, file.stem, [locale.name])
                        any_compiled = True
                    else:
                        print(
                            locale_name,
                            file.stem,
                            f"{percent_translated}% < {COMPILATION_THRESHOLD}%",
                        )

                if any_compiled:
                    # Update the hash value
                    save_hash(package_dir, create_hash(*po_files))
                    # Update the contributors file
                    contributors = package_dir / CONTRIBUTORS
                    contributors.write_text(
                        get_contributors_report(
                            locale=locale_name, crowdin_key=crowdin_key
                        )
                    )
            else:
                print(f"No updates for the language package {locale_name}")

        except BaseException:
            print(
                f"An error occurred when generating the language package {locale_name}"
            )
            traceback.print_exc()


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Prepare JupyterLab language packages for release"
    )
    parser.add_argument("--new-version", help="New version of the language packages")
    parser.add_argument(
        "--crowdin-key", default=os.environ.get("CROWDIN_API"), help="Crowdin API key"
    )
    args = parser.parse_args()

    if args.new_version:
        if VERSION_REGEX.fullmatch(args.new_version) is None:
            raise ValueError(
                f"Version must be formatted as '<major>.<minor>.post<build>'; got {args.new_version}"
            )
    if args.crowdin_key is None:
        raise ValueError(
            "Crowdin API key needs to be set using either the "
            "'--crowdin-key' option or the 'CROWDIN_API' environment variable"
        )

    prepare_jupyterlab_lp_release(args.crowdin_key, args.new_version)
