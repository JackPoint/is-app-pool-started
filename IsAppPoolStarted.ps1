$apppool = $args[0];
$state = &"$env:windir\system32\inetsrv\appcmd.exe" list apppool "$apppool" | echo
if($state -like '*state:Started*') {
    Write-Host 1
} else {
    Write-Host 0
}
