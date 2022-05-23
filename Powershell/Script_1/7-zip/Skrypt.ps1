$zapis = "C:\Users\bisok\Desktop\Powershell\Script_1\7-zip\7-zip.msi"
$strona = "https://www.7-zip.org/a/7z2107-x64.exe"

#pobieranie
Invoke-WebRequest $strona -OutFile $zapis

#instalacja
# msiexec.exe /i "C:\Users\bisok\Desktop\Powershell\Script_1\7-zip" /qn