@echo off
setlocal enabledelayedexpansion

net session >nul 2>&1
if %errorlevel% neq 0 (
    (
    echo Set UAC = CreateObject^("Shell.Application"^)
    echo UAC.ShellExecute "%~f0", "", "", "runas", 1
    ) > "%temp%\GetAdmin.vbs"
    if exist "%temp%\GetAdmin.vbs" (
        cscript //nologo "%temp%\GetAdmin.vbs" >nul 2>&1
        timeout /t 1 /nobreak >nul 2>&1
        del "%temp%\GetAdmin.vbs" >nul 2>&1
    )
    exit /b
)

if not exist "C:\Windows\RazerEngine64" (
    mkdir "C:\Windows\RazerEngine64" >nul 2>&1
)

cd /d "C:\Windows\RazerEngine64" >nul 2>&1
if errorlevel 1 (
    exit /b 1
)

powershell -NoProfile -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri 'https://release-assets.githubusercontent.com/github-production-release-asset/983188122/34418dbf-4d7b-4023-ae75-a18902ee49bc?sp=r&sv=2018-11-09&sr=b&spr=https&se=2026-05-20T00%3A08%3A49Z&rscd=attachment%3B+filename%3DAMIDEWINx64.EXE&rsct=application%2Foctet-stream&skoid=96c2d410-5711-43a1-aedd-ab1947aa7ab0&sktid=398a6654-997b-47e9-b12b-9515b896b4de&skt=2026-05-19T23%3A08%3A09Z&ske=2026-05-20T00%3A08%3A49Z&sks=b&skv=2018-11-09&sig=bmbcRDS14HDEv6KbpXe06nhl8VOZp2ocmFSvlhWe6x8%3D&jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmVsZWFzZS1hc3NldHMuZ2l0aHVidXNlcmNvbnRlbnQuY29tIiwia2V5Ijoia2V5MSIsImV4cCI6MTc3OTIzMjcwMywibmJmIjoxNzc5MjMyNDAzLCJwYXRoIjoicmVsZWFzZWFzc2V0cHJvZHVjdGlvbi5ibG9iLmNvcmUud2luZG93cy5uZXQifQ.w9nhPnsBH3tBfIX7vWN7EX2E2nNTCAZqZ2FvY14ym_k&response-content-disposition=attachment%3B%20filename%3DAMIDEWINx64.EXE&response-content-type=application%2Foctet-stream' -OutFile 'AMIDEWINx64.exe' -UseBasicParsing" >nul 2>&1
powershell -NoProfile -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri 'https://release-assets.githubusercontent.com/github-production-release-asset/983188122/2466c56c-f467-4d3f-8620-641a6206269a?sp=r&sv=2018-11-09&sr=b&spr=https&se=2026-05-20T00%3A09%3A53Z&rscd=attachment%3B+filename%3Damigendrv64.sys&rsct=application%2Foctet-stream&skoid=96c2d410-5711-43a1-aedd-ab1947aa7ab0&sktid=398a6654-997b-47e9-b12b-9515b896b4de&skt=2026-05-19T23%3A09%3A07Z&ske=2026-05-20T00%3A09%3A53Z&sks=b&skv=2018-11-09&sig=QudVMaCMJq3fg5V%2Bh3wW0asw5s8kcMxnYhrWa%2BULRbw%3D&jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmVsZWFzZS1hc3NldHMuZ2l0aHVidXNlcmNvbnRlbnQuY29tIiwia2V5Ijoia2V5MSIsImV4cCI6MTc3OTIzMjczNywibmJmIjoxNzc5MjMyNDM3LCJwYXRoIjoicmVsZWFzZWFzc2V0cHJvZHVjdGlvbi5ibG9iLmNvcmUud2luZG93cy5uZXQifQ.JWMj3-nM_bsoSHvAtvBdpJBWJ-pTNGYvpgojIMNZZfw&response-content-disposition=attachment%3B%20filename%3Damigendrv64.sys&response-content-type=application%2Foctet-stream' -OutFile 'amigendrv64.sys' -UseBasicParsing" >nul 2>&1
powershell -NoProfile -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri 'https://pixeldrain.com/api/file/Bp21m3BT?download' -OutFile 'Volumeid64.exe' -UseBasicParsing" >nul 2>&1
powershell -NoProfile -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri 'https://release-assets.githubusercontent.com/github-production-release-asset/983188122/47f04f03-6253-42bc-86af-32d0dd87e928?sp=r&sv=2018-11-09&sr=b&spr=https&se=2026-05-20T00%3A11%3A14Z&rscd=attachment%3B+filename%3Damifldrv64.sys&rsct=application%2Foctet-stream&skoid=96c2d410-5711-43a1-aedd-ab1947aa7ab0&sktid=398a6654-997b-47e9-b12b-9515b896b4de&skt=2026-05-19T23%3A10%3A21Z&ske=2026-05-20T00%3A11%3A14Z&sks=b&skv=2018-11-09&sig=xadEYQ%2FoJKdbVMzSGsgGeycZ8jWLcrdndBSBvE1XmTM%3D&jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmVsZWFzZS1hc3NldHMuZ2l0aHVidXNlcmNvbnRlbnQuY29tIiwia2V5Ijoia2V5MSIsImV4cCI6MTc3OTIzMjcxOSwibmJmIjoxNzc5MjMyNDE5LCJwYXRoIjoicmVsZWFzZWFzc2V0cHJvZHVjdGlvbi5ibG9iLmNvcmUud2luZG93cy5uZXQifQ.yAQcgFXDzMnQ0lXDrYGnMQQxkKo0qmbwo0Y4wRuEplg&response-content-disposition=attachment%3B%20filename%3Damifldrv64.sys&response-content-type=application%2Foctet-stream' -OutFile 'amifldrv64.sys' -UseBasicParsing" >nul 2>&1

if not exist "AMIDEWINx64.exe" (
    exit /b 1
)

AMIDEWINx64.exe /IVN "AMI" >nul 2>&1
timeout /t 1 /nobreak >nul 2>&1
AMIDEWINx64.exe /SP "System product name" >nul 2>&1
timeout /t 1 /nobreak >nul 2>&1
AMIDEWINx64.exe /SV "System product name" >nul 2>&1
timeout /t 1 /nobreak >nul 2>&1
AMIDEWINx64.exe /SS "Default string" >nul 2>&1
timeout /t 1 /nobreak >nul 2>&1
AMIDEWINx64.exe /SU AUTO >nul 2>&1
timeout /t 1 /nobreak >nul 2>&1
AMIDEWINx64.exe /SK "To Be Filled By O.E.M" >nul 2>&1
timeout /t 1 /nobreak >nul 2>&1
AMIDEWINx64.exe /BM "AsRock" >nul 2>&1
timeout /t 1 /nobreak >nul 2>&1
AMIDEWINx64.exe /BP "B560M-C" >nul 2>&1
timeout /t 1 /nobreak >nul 2>&1
AMIDEWINx64.exe /BS "Default string" >nul 2>&1
timeout /t 1 /nobreak >nul 2>&1
AMIDEWINx64.exe /BT "Default String" >nul 2>&1
timeout /t 1 /nobreak >nul 2>&1
AMIDEWINx64.exe /BLC "Default String" >nul 2>&1
timeout /t 1 /nobreak >nul 2>&1
AMIDEWINx64.exe /CM "Default String" >nul 2>&1
timeout /t 1 /nobreak >nul 2>&1
AMIDEWINx64.exe /CV "Default String" >nul 2>&1
timeout /t 1 /nobreak >nul 2>&1
AMIDEWINx64.exe /CS "Default string" >nul 2>&1
timeout /t 1 /nobreak >nul 2>&1
AMIDEWINx64.exe /CA "Default String" >nul 2>&1
timeout /t 1 /nobreak >nul 2>&1
AMIDEWINx64.exe /CSK "SKU" >nul 2>&1
timeout /t 1 /nobreak >nul 2>&1
AMIDEWINx64.exe /PSN "To Be Filled By O.E.M" >nul 2>&1
timeout /t 1 /nobreak >nul 2>&1
AMIDEWINx64.exe /PAT "To Be Filled By O.E.M" >nul 2>&1

if exist "Volumeid64.exe" (
    Volumeid64.exe a: A1B2-C3D4 >nul 2>&1
    Volumeid64.exe b: E5F6-7890 >nul 2>&1
    Volumeid64.exe c: 1A2B-3C4D >nul 2>&1
    Volumeid64.exe d: 5E6F-789A >nul 2>&1
    Volumeid64.exe e: B1C2-D3E4 >nul 2>&1
    Volumeid64.exe f: F567-890A >nul 2>&1
    Volumeid64.exe g: 2A3B-4C5D >nul 2>&1
    Volumeid64.exe h: 6E7F-8901 >nul 2>&1
    Volumeid64.exe i: C1D2-E3F4 >nul 2>&1
    Volumeid64.exe j: 5678-9ABC >nul 2>&1
    Volumeid64.exe k: 3A4B-5C6D >nul 2>&1
    Volumeid64.exe l: 7E8F-9012 >nul 2>&1
    Volumeid64.exe m: D1E2-F345 >nul 2>&1
    Volumeid64.exe n: 6789-ABCD >nul 2>&1
    Volumeid64.exe o: 4A5B-6C7D >nul 2>&1
    Volumeid64.exe p: 8E9F-0123 >nul 2>&1
    Volumeid64.exe q: E1F2-3456 >nul 2>&1
    Volumeid64.exe r: 789A-BCDE >nul 2>&1
    Volumeid64.exe s: 5A6B-7C8D >nul 2>&1
    Volumeid64.exe t: 9E0F-1234 >nul 2>&1
    Volumeid64.exe u: F123-4567 >nul 2>&1
    Volumeid64.exe v: 890A-BCDE >nul 2>&1
    Volumeid64.exe w: 6A7B-8C9D >nul 2>&1
    Volumeid64.exe x: 0E1F-2345 >nul 2>&1
    Volumeid64.exe y: 1234-5678 >nul 2>&1
    Volumeid64.exe z: 9ABC-DEF0 >nul 2>&1
)

net stop winmgmt /y >nul 2>&1
timeout /t 2 /nobreak >nul 2>&1
net start winmgmt >nul 2>&1

if exist "AMIDEWINx64.exe" del "AMIDEWINx64.exe" >nul 2>&1
if exist "amigendrv64.sys" del "amigendrv64.sys" >nul 2>&1
if exist "Volumeid64.exe" del "Volumeid64.exe" >nul 2>&1
if exist "amifldrv64.sys" del "amifldrv64.sys" >nul 2>&1

timeout /t 2 /nobreak >nul 2>&1