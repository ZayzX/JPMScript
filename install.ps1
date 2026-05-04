$URL = "https://github.com/ZayzX/JPM/releases/latest/download/JavaPackageManager.zip"
$ZIP = "JavaPackageManager.zip"

Write-Host "Downloading JPM..."

Invoke-WebRequest -Uri $URL -OutFile $ZIP

Write-Host "Extracting to current directory..."

Expand-Archive -Path $ZIP -DestinationPath "." -Force

Write-Host "Cleaning up..."

Remove-Item $ZIP -Force

Remove-Item $MyInvocation.MyCommand.Path -Force

Write-Host "Installation complete!"