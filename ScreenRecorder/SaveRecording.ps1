$fileName = Read-Host 'Name Your Recording'
$Date = $((Get-Date).ToString('yyyy-MM-dd'))
$Path = $PSScriptRoot + "\Recordings\$Date"

if (!(Test-Path $Path -PathType Container)) {
    Write-Host("Creating $Path...")
    New-Item -ItemType Directory -Force -Path $Path | Out-Null
}

Write-Host("Saving...")

#Sleep to allow for video to process before pulling
Start-Sleep -m 1050
adb pull /sdcard/Tandem_Recording.mp4 $Path\$fileName.mp4