$destynacja = "C:\Users\bisok\Desktop\Powershell\Script_1\Skrypty"
$users = Get-LocalUser -Name *

foreach($u in $users){
    New-Item -path "$destynacja" -Name "$u" -ItemType "directory"
    tree C:\Users /A /F > $destynacja\$u\$u.doc
}
