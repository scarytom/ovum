if ($args.Count -ne 2)
{
  Write-Host "Usage: ovum.ps1 lang projectdir"
  break
}

$ErrorActionPreference='Stop'
$parent = $args[0]
$womb = $args[1]
$ovary = "$env:temp\" + [System.IO.Path]::GetRandomFileName()

Write-Host "working in $ovary"
New-Item "$ovary" -type directory | Out-Null
if (!(Test-Path "$womb")) {
  New-Item "$womb" -type directory | Out-Null
}

Write-Host "downloading seed..."
(new-object System.Net.WebClient).DownloadFile("https://github.com/scarytom/ovum/archive/$parent.zip","$ovary\data.zip")

Write-Host "germinating seed..."
$shell_app=new-object -com shell.application
$zip_file = $shell_app.namespace("$ovary\data.zip")
$destination = $shell_app.namespace("$ovary")
$destination.Copyhere($zip_file.items(), 0x4)

Write-Host "removing husk..."
Remove-Item "$ovary\data.zip"

Write-Host "planting seed..."
Move-Item "$ovary\*\*" "$womb\" -ErrorAction SilentlyContinue

Write-Host "tidying up..."
Remove-Item "$ovary" -recurse
