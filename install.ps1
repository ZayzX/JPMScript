$URL = "https://github.com/ZayzX/JPM/releases/latest/download/JavaPackageManager.zip"
$ZIP = "JavaPackageManager.zip"
$DIR = "jpm"

Write-Host "Downloading JPM..."

Invoke-WebRequest -Uri $URL -OutFile $ZIP

Write-Host "Extracting..."

Expand-Archive -Path $ZIP -DestinationPath $DIR -Force

Write-Host "Cleaning up..."

Remove-Item $ZIP

Write-Host "Installation complete!"