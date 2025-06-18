try{
ipconfig | Out-File -FilePath C:\Users\aweso\Desktop\Helpdesktoolkit.powershell\output\ipinfo.txt
} catch {
Write-Host "error" -ForegroundColor Red
}
try{
Test-Connection google.com | Out-File -FilePath C:\Users\aweso\Desktop\Helpdesktoolkit.powershell\output\ping.txt
} catch {
Write-Host "error" -ForegroundColor Red
}
try{
Resolve-DnsName google.com | Out-File -FilePath C:\Users\aweso\Desktop\Helpdesktoolkit.powershell\output\dns.txt
} catch{
Write-Host "error" -ForegroundColor Red
}