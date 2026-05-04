#!/bin/bash

URL="https://github.com/ZayzX/JPM/releases/latest/download/JavaPackageManager.zip"
ZIP="JavaPackageManager.zip"

echo "Downloading JPM..."

curl -L $URL -o $ZIP

echo "Extracting into current directory..."

unzip -o $ZIP -d .

echo "Cleaning up..."

rm $ZIP

rm -- "$0"

echo "Installation complete!"