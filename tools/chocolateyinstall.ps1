$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://lol.secure.dyn.riotcdn.net/channels/public/x/installer/current/live.na.exe'
$checksum   = '9AC163C08713144D741D2483563D4C74074EECC12159B13FB44AAC2BA9844DEA'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe' 
  url           = $url
  softwareName  = 'League of Legends'
  checksum      = $checksum
  checksumType  = 'sha256'
  silentArgs    = "--skip-to-install"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs