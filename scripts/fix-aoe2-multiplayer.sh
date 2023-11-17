#!/bin/bash
cd "$(mktemp -d)"
wget "https://download.microsoft.com/download/9/3/F/93FCF1E7-E6A4-478B-96E7-D4B285925B00/vc_redist.x64.exe"
cabextract vc_redist.x64.exe
cabextract a10
chmod u+w ~/.steam/steam/steamapps/compatdata/813780/pfx/drive_c/windows/system32/ucrtbase.dll
yes | cp ucrtbase.dll ~/.steam/steam/steamapps/compatdata/813780/pfx/drive_c/windows/system32
