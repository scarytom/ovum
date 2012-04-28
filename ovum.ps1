if ($args.Count -ne 2)
{
  Write-Host "Usage: ovum.ps1 lang projectdir"
  break
}

$parent = args[0]
$womb = args[1]
$ovary = $env:temp\[System.IO.Path]::GetRandomFileName()

Directory.CreateDirectory($ovary);
(new-object System.Net.WebClient).DownloadFile("https://nodeload.github.com/scarytom/ovum/zipball/$parent","$ovary\data.zip")

$shell_app=new-object -com shell.application
$zip_file = $shell_app.namespace("$ovary\data.zip")
$destination = $shell_app.namespace("$ovary")
$destination.Copyhere($zip_file.items())

Write-Host $ovary