Bourne shell

    ./script.sh

Powershell

     powershell -executionpolicy bypass -File ./script.ps1 -p /c/ProgramData/Microsoft/Windows/Start\ Menu/Programs/

     powershell -executionpolicy bypass -File ./script.ps1 -p ~/AppData/Roaming/Microsoft/Windows/Start\ Menu/Programs/
    
Powershell to JSON file

    powershell -executionpolicy bypass -File ./script.ps1 -p /c/ProgramData/Microsoft/Windows/Start\ Menu/Programs/ > installed_apps.json

Start menu

    cd /c/ProgramData/Microsoft/Windows/Start\ Menu/Programs
    
Or

    cd ~/AppData/Roaming/Microsoft/Windows/Start\ Menu/Programs/
