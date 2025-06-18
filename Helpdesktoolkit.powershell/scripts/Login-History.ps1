try{
Get-EventLog -LogName Security  -InstanceId 4624 | Out-File "C:\Users\aweso\Desktop\Helpdesktoolkit.powershell\output\logininfo.txt"
} catch{ 
Write-Host "error" -ForegroundColor Red
}