��    ~            �      �  
   �            	   "     ,     3     8     =  ?   W     �     �     �     �     �     �     �     	     	  !   4	  $   V	  M   {	  &   �	     �	     �	  	   	
     
     &
     7
  
   V
  	   a
     k
     s
     {
     �
  C   �
     �
     �
  "   
     -     0     >     E     W  	   e  
   o  ,   z  .   �     �     �     �     �  #        7  %   >     d  �   x            '   %     M  P   U  J   �  W   �  4   I     ~     �     �     �     �     �     �               4  -   P     ~  )   �  0   �     �  !     c   &     �  �   �     -  h   I     �  #   �  &   �       &   .  N   U  �   �      3  +   T  �  �     %  '   >     f    �  7   �     �  (   �  F     �   c     Z    p  +   y     �  �   �  5   I  %    7   �     �  I   �  1   G  n   y  d   �  �   M  N   �     G      `  �   �  �   (   @   !  N   C!  3  �!     �#     �#     �#  	   �#     �#     �#     $  !   
$  I   ,$     v$     �$  "   �$     �$     �$     �$     �$  
   �$     %      %  (   @%  F   i%  '   �%  
   �%  
   �%     �%     �%     &  '   *&  
   R&  
   ]&     h&     v&     �&  
   �&  ?   �&  1   �&     '  "   *'     M'     P'     _'  #   m'     �'     �'     �'  �   �'  �   Z(     �(     �(     	)     )  '   2)  	   Z)  %   d)     �)  >  �)     �*     �*  ,   +     ;+  a   H+  R   �+  X   �+  E   V,     �,     �,     �,  '   �,     �,     -     -     /-     >-     Z-  ,   v-     �-  *   �-  4   �-     .  .   /.  [   ^.     �.  �   �.     s/  i   �/     �/  )   0  )   ;0     e0  3   n0  O   �0  �   �0     �1  #   �1     �1     �3      �3     �3  C  4  .   P6     6  *   �6  Q   �6    7     #8  +  98  .   e9     �9  �   �9  :   ,:  L  g:  U   �;     
<  L   #<  ,   p<  a   �<  }   �<  �   }=  >   (>     g>     �>  �   �>  �   7?  6   (@  D   _@    (current)  with errors: %1 %1 to %2 Available Cancel Cell Code Copy diagnostics' message Could not rename %1 - consult the language server documentation Diagnostics Panel Dismiss Display the completer themes Documentation: Error Highlight references Highlight type definition Hint Ignore diagnostics like this Ignore diagnostics with "%1" code Ignore diagnostics with "%1" message In case of issues with installation feel welcome to ask a question on GitHub. Includes dedicated dark mode icons set Information Installation Jump back Jump to definition Jump to location LSP server extension not found LSP status Licence:  Line:Ch Message Message from  Missing No installation instructions were provided with this specification. No issues detected, great job! No jump targets found No language server for %1 detected OK Panel columns Rename Rename failed: %1 Rename symbol Rename to Renamed %1 Renamed %2 in %3 cell Renamed %2 in %3 cells Renamed %2 in %3 place Renamed %2 in %3 places Renaming %1 to %2... Running Severity Show diagnostics panel Skipped non-installed server(s): {} Source Successfully copied "%1" to clipboard Syntax highlighting There is %1 language server you can easily install that supports %2. There are %1 language servers you can easily install that supports %2. Troubleshooting Virtual Document Waiting for documents initialization... Warning We do not have an auto-detection ready for a language servers supporting %1 yet. You may contribute a specification for auto-detection as described in our  Your browser protects clipboard from write operations; please copy the message manually additional absolute paths to seek node_modules first cell %1 cells: %1-%2 documentation path to nodejs executable schemaCode Completion schemaCode Diagnostics schemaCode Highlights schemaCode Syntax schemaLSP Completion settings. schemaLSP Rename settings. schemaLSP code syntax highlighting settings. schemaLanguage Server schemaLanguage Server Protocol settings. settingsAsk servers to send trace notifications settingsCache size settingsCase-sensitive filtering settingsCodes of diagnostics which should not be shown in the panel nor highlighted in the editor. settingsCompleter theme settingsConfiguration to be sent to language server over LSP when initialized: see the specific language server's documentation for more settingsContinuous hinting settingsDefault level of the severity for diagnostics without severity provided by the language server. settingsDefault severity level settingsDiagnostic codes to ignore settingsDiagnostic messages to ignore settingsDisable settingsDisable completions by source settingsDisable this feature. Requires reloading JupyterLab to apply changes. settingsIn case of ties when sorting completions, should the kernel completions receive higher priority than the language server completions? settingsInclude perfect matches settingsKernel completion response timeout settingsKeyboard key which needs to be pressed with click to jump. The allowed keys are Alt, Control, Shift, Accel, and AltGraph. Accel corresponds to Control or Meta (Command on Mac). Linux user: Meta key is also supported. Safari users: Meta key is also supported, AltGraph is not supported. To see which physical keys are mapped, visit: https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/getModifierState settingsLanguage Server settingsLanguage Server Configurations settingsLanguage integration settingsLanguage-server specific configuration, keyed by implementation, e.g: 

pyls: {
  serverSettings: {
    pyls: {
      plugins: {
        pydocstyle: {
          enabled: true
        },
        pyflakes: {
          enabled: false
        },
        flake8: {
          enabled: true
        }
      }
    }
  }
}

Alternatively, using VSCode's naming convention:

pyls: {
  serverSettings: {
    "pyls.plugins.pydocstyle.enabled": true,
    "pyls.plugins.pyflakes.enabled": false,
    "pyls.plugins.flake8.enabled": true
  }
} settingsLog all LSP communication with the LSP servers settingsLogging console type settingsLogging console verbosity level settingsMapping of custom kernel types to valid completion kind names settingsMapping used for icon selection. The kernel types (keys) are case-insensitive. Accepted values are the names of CompletionItemKind and 'Kernel' literal. The defaults aim to provide good initial experience for Julia, Python and R kernels. settingsModifier key settingsNumber of milliseconds to delay sending out the highlights request to the language server; you can get better responsiveness adjusting this value, but setting it to zero can actually slow it down as the server might get overwhelmed when moving the cursor. settingsPrioritize completions from kernel settingsPriority of the server settingsRegular expressions matching messages of diagnostics which should not be shown in the panel nor highlighted in the editor. settingsRemove highlights on editor (e.g. cell) blur settingsShould an attempt to get the kernel response (with timeout as specified by kernelResponseTimeout) be made if kernel is busy? If you often write code in notebook while computations are running for long time (e.g. training models), turning this off might give you faster response times. settingsShould completion filtering be case-sensitive? settingsShow documentation box settingsSuppress invoke via trigger character in specific code fragments settingsText to display next to completion label settingsThe console to use for debugging problems with this extension. Allowed values are: browser, floating. settingsThe sources from which to exclude completion from. Possible values include 'Kernel', 'LSP'. settingsThe time to wait for the kernel completions suggestions in milliseconds. Set to 0 to disable kernel completions, or to -1 to wait indefinitely (not recommended). settingsThreshold of foreign code coverage for changing the mode in an editor settingsThrottler delay settingsWait for kernel if busy settingsWhat to display next to the completion label, one of: 'detail', 'type', 'source', 'auto'. The default 'auto' will display whichever information is available. settingsWhether all messages sent to and received from LSP servers should be logged into the console. To see these messages, set loggingLevel to debug or log. Note: Only messages handled by the new API will be shown. settingsWhether to enable continuous hinting (Hinterland mode). settingsWhether to show documentation box next to the completion suggestions. Project-Id-Version: jupyterlab
PO-Revision-Date: 2022-08-29 06:54
Language-Team: Polish
Language: pl_PL
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=(n==1 ? 0 : (n%10>=2 && n%10<=4) && (n%100<12 || n%100>14) ? 1 : n!=1 && (n%10>=0 && n%10<=1) || (n%10>=5 && n%10<=9) || (n%100>=12 && n%100<=14) ? 2 : 3);
X-Crowdin-File: /master/extensions/jupyterlab_lsp/locale/jupyterlab_lsp.pot
X-Crowdin-File-ID: 99
X-Crowdin-Language: pl
X-Crowdin-Project: jupyterlab
X-Crowdin-Project-ID: 409874
  (aktualny)  z błędami: %1 %1 na %2 Dostępne Anuluj Komórka Kod Kopiuj wiadomość diagnostyczną Nie można zmienić nazwy %1 - sprawdź dokumentację serwera językowego Panel diagnostyk Odrzuć Wyświetl motywy autouzupełniania Dokumentacja: Błąd Wyróżnij odwołania Wyróżnij definicję typu Wskazówka Ignoruj podobne diagnostyki Ignoruj diagnostyki z kodem "%1" Ignoruj diagnostyki z wiadomością "%1" W przypadku problemów z instalacją możesz zadać pytanie na GitHub. Zawiera dedykowane ikony trybu ciemnego Informacja Instalacja Skocz z powrotem Skocz do definicji Przejdź do lokalizacji Nie znaleziono rozszerzenia serwera LSP Status LSP Licencja:  Linia:Kolumna Wiadomość Wiadomość z  Brakujące Nie dostarczono instrukcji instalacji wraz z tą specyfikacją. Nie wykryto żadnych problemów, świetna robota! Nie znaleziono celów skoku Nie wykryto serwera języka dla %1 OK Kolumny panelu Zmień nazwę Zmiana nazwy nie powiodła się: %1 Zmień nazwę symbolu Zmień nazwę na Zmieniono nazwę %1 Zmieniono nazwę %2 w %3 komórce Zmieniono nazwę %2 w %3 komórkach Zmieniono nazwę %2 w %3 komórkach Zmieniono nazwę %2 w %3 komórkach Zmieniono nazwę %2 w %3 miejscu Zmieniono nazwę %2 w %3 miejscach Zmieniono nazwę %2 w %3 miejscach Zmieniono nazwę %2 w %3 miejscach Zmiana nazwy %1 na %2... Uruchomione Krytyczność Pokaż panel diagnostyczny Pominięto niezainstalowane serwery: {} Źródło Pomyślnie skopiowano "%1" do schowka Podświetlanie składni Dostępny jest do łatwej instalacji %1 serwer językowy który obsługuje %2. Dostępne są do łatwej instalacji %1 serwery językowe które obsługują %2. Dostępne są do łatwej instalacji %1 serwery językowe które obsługują %2. Dostępne są do łatwej instalacji %1 serwery językowe które obsługują %2. Rozwiązywanie problemów Wirtualny dokument Oczekiwanie na inicjalizację dokumentów... Ostrzeżenie Nie mamy jeszcze gotowego automatycznego wykrywania dla serwerów językowych obsługujących %1. Możesz dodać specyfikację automatycznego wykrywania w sposób opisany w naszym  Twoja przeglądarka chroni schowek przed operacjami zapisu; skopiuj wiadomość ręcznie dodatkowe ścieżki bezwzględne do wyszukania modułów node_modules komórka %1 komórki: %1-%2 dokumentacja ścieżka do pliku wykonywalnego nodejs Autouzupełnianie Kodu Diagnostyka kodu Kolorowanie składni kodu Składnia kodu Ustawienia podpowiedzi LSP. Ustawienia zmiany nazw LSP. Ustawienia podświetlania składni kodu LSP. Serwer języka Ustawienia protokołu serwera językowego. Poproś serwery o wysyłanie powiadomień ze śladem Rozmiar pamięci podręcznej Filtrowanie z uwzględnieniem wielkości liter Kody diagnostyk, które nie powinny być wyświetlane w panelu ani podkreślane w edytorze. Motyw autouzupełnianiacza Konfiguracja do wysłania na serwer językowy przez LSP po zainicjowaniu: zobacz dokumentację konkretnego serwera językowego, aby dowiedzieć się więcej Ciągłe podpowiedzi Domyślny poziom krytyczności dla diagnostyk dla których server językowy nie określił krytyczności. Domyślny poziom krytyczności Wiadomości diagnostyczne do zignorowania Wiadomości diagnostyczne do zignorowania Wyłącz Wyłącz podpowiedzi autouzupełniania ze źródła Wyłącz tę funkcję. Wymaga przeładowania JupyterLab aby zastosować zmiany. W przypadku remisów podczas sortowania podpowiedzi, czy podpowiedzi jądra powinny mieć wyższy priorytet niż podpowiedzi serwera językowego? Uwzględnij idealne dopasowania Limit czasu na podpowiedzi z jądra Klawisz klawiatury, który należy wcisnąć razem z kliknięciem, aby skakać. Dozwolone klawisze to Alt, Control, Shift, Accel i AltGraph. Accel odpowiada Control lub Meta (Command on Mac). Dla użytkowników Linux: klawisz Meta jest również obsługiwany. Użytkownicy Safari: klawisze Meta jest również obsługiwany, AltGraph nie jest obsługiwany. Aby zobaczyć, do których fizycznych klawisze zostały zmapowane, odwiedź: https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/getModifierState Serwer języka Konfiguracja serwera językowego Integracja języka Konfiguracja dla poszczególnych serwerów językowych, gdzie klucze korespondują do implementacji serwera, na przykład:

pyls: {
  serverSettings: {
    pyls: {
      plugins: {
        pydocstyle: {
          enabled: true
        }
        płatki: {
          enabled: false
        },
        płatki8: {
          enabled: true
        }
      }
    }
  }
}

Alternatywnie, używając konwencji nazw VSCode:

pyls: {
  serverSettings: {
    "pyls. lugins.pydocstyle.enabled": true,
    "pyls.plugins.pyflakes.enabled": false,
    "pyls.plugins.flake8.enabled": true
  }
} Loguj wszystkie komunikaty LSP z serwerami LSP Typ konsoli logowania Poziom szczegółowości konsoli dziennika Mapowanie niestandardowych typów jądra do poprawnych nazw rodzajów podpowiedzi Mapowanie używane do wyboru ikon. Wielkość liter dla typów jądra (keys) nie maj znaczenia. Akceptowane wartości to nazwy CompletionItemKind i "Kernel". Domyślnie wartości mają na celu zapewnienie dobrego początkowego doświadczenia dla jąder Julii, Pythona i R. Klawisz modyfikujący Liczba milisekund na opóźnienie wysłania prośby o podświetlenie do serwera językowego; możesz uzyskać lepszą zdolność reagowania dostosowując tę wartość, ale ustawienie na zero może w spowodować spowolnienie, ponieważ serwer może zostać przytłoczony podczas przesuwania kursora. Nadaj wyższy priorytet podpowiedziom z jądra Priorytet serwera Wyrażenia regularne dopasowujące wiadomości diagnostyk, które nie powinny być wyświetlane w panelu ani podkreślane w edytorze. Usuń podświetlenia po opuszczeniu edytora (np. komórki) Czy powinna być podjęta próba uzyskania odpowiedzi jądra (z limitem czasu oczekiwania określonym przez kernelResponseTimeout), jeśli jądro jest zajęte? Jeśli często piszesz kod w notatniku, podczas gdy obliczenia działają przez długi czas (n.p. trenując modele), wyłączenie tej opcji może dać szybszy czas reakcji. Czy filtrowanie podpowiedzi autouzupełniania powinno uwzględniać wielkość liter? Pokaż pole dokumentacji Zahamuj wywoływanie przez znak wyzwalający w określonych fragmentach kodu Tekst wyświetlany obok etykiety podpowiedzi Konsola do debugowania problemów z tym rozszerzeniem. Dozwolone wartości to: browser, floating. Źródła z których podpowiedzi autouzupełniania powinny być pominięte. Możliwe wartości to „Kernel” lub „LSP”. Czas oczekiwania na podpowiedzi uzupełnienie z jądra w milisekundach. Ustaw 0, aby wyłączyć podpowiedzi z jądra, lub na -1, aby czekać bezterminowo (nie zalecane). Próg pokrycia obcego kodu wymagany do zmiany trybu w edytorze Opóźnienie przepustnicy Czekaj na jądro jeśli zajęte Co wyświetlać obok etykiety uzupełniającej, jedno z: 'detail', 'type', 'source', 'auto'. Domyślne 'auto' wyświetli cokolwiek będzie dostępne. Czy wszystkie wiadomości wysyłane i odbierane z serwerów LSP powinny być zalogowane do konsoli. Aby zobaczyć te wiadomości, ustaw loggingLevel na debug lub log. Uwaga: Wyświetlane będą tylko wiadomości obsługiwane przez nowe API. Czy włączyć ciągłe podpowiedzi (tryb Hinterland). Czy pokazywać dokumentację przy podpowiedziach autouzupełniania. 