try {
    Remove-Item $tempPath -Recurse -Force -ErrorAction Stop
    Write-Host "Cleanup complete" -ForegroundColor Green
} catch {
    Write-Host "Some files could not be deleted because they're in use." -ForegroundColor Yellow
    Write-Host "Details: $($_.Exception.Message)"
}