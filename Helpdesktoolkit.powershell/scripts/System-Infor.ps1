try{
Get-ComputerInfo | Out-File -FilePath C:\Users\aweso\Desktop\Helpdesktoolkit.powershell\output\compinf.txt
} catch {
Write-Host " bad " -ForegroundColor Black
}
