$fileName = Read-Host 'Name Your Logcat File'
$Date = $((Get-Date).ToString('yyyy-MM-dd'))
$Path = $PSScriptRoot + "\Logs\$Date"

if (!(Test-Path $Path -PathType Container)) {
    Write-Host("Creating $Path...")
    New-Item -ItemType Directory -Force -Path $Path | Out-Null
}

adb logcat -d > $Path\$fileName.txt