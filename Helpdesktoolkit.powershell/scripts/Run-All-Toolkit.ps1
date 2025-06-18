$timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
$logPath = "C:\SupportLogs\$timestamp"
New-Item -ItemType Directory -Path $logPath -Force

try {
    New-Item -ItemType Directory -Path "C:\SupportLogs" -Force
} catch {
    Write-Host "Could not create folder." -ForegroundColor Red
}

# Get Network Info
try {
    ipconfig | Out-File -FilePath "$logPath\IPConfig.txt"
} catch {
    Write-Host "error" -ForegroundColor Red
}
try {
    Test-Connection google.com | Out-File -FilePath "$logPath\Ping.txt"
} catch {
    Write-Host "error" -ForegroundColor Red
}
try {
    Resolve-DnsName google.com | Out-File -FilePath "$logPath\DNS.txt"
} catch {
    Write-Host "error" -ForegroundColor Red
}

# Get System Information
try {
    Get-ComputerInfo | Out-File -FilePath "$logPath\Sysinfo.txt"
} catch {
    Write-Host "bad" -ForegroundColor Black
}

# Clear Temp Files
$tempPath = "$env:TEMP\*"
try {
    Remove-Item $tempPath -Recurse -Force -ErrorAction Stop
    Write-Host "Cleanup complete" -ForegroundColor Green
} catch {
    Write-Host "Some files could not be deleted because they're in use." -ForegroundColor Red
}

# Get Login Logs
try {
    Get-EventLog -LogName Security -InstanceId 4624 -Newest 20 |
    Out-File -FilePath "$logPath\login.txt"
} catch {
    Write-Host "Not Admin cant pull Login, please copy script into PowerShell ISE after opening as admin" -ForegroundColor Red
}

# Open the folder when done
Start-Process $logPath
