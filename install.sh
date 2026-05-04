#!/bin/bash

URL="https://github.com/ZayzX/JPM/releases/latest/download/JavaPackageManager.zip"
ZIP="JavaPackageManager.zip"
DIR="jpm"

echo "Downloading JPM..."

curl -L $URL -o $ZIP

echo "Extracting..."

unzip -o $ZIP -d $DIR

echo "Cleaning up..."

rm $ZIP

echo "Installation complete!"