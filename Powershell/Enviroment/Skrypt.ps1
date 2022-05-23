$today = get-date -Hour 7
$T_DATA = "C:\Users\bisok\Desktop\Powershell\Enviroment\logins.txt"
Get-EventLog -Log "System" -after $today -Source "Microsoft-Windows-winlogon" | Out-File -filepath $T_DATA -append
