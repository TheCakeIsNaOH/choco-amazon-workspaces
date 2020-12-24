$ErrorActionPreference  = 'Stop';
$toolsDir               = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName            = 'amazon-workspaces'
$fileType               = 'msi'
$url                    = 'https://d2td7dqidlhjx7.cloudfront.net/prod/global/windows/Amazon+WorkSpaces.msi'
$softwareName           = "Amazon WorkSpaces*"
$checksum               = '1D8F2F8C66B615E0C936530C427DDF84B1A6085033E81F0708E58E5AE2A2471C'
$checksumType           = 'sha256'
$silentArgs             = '/qn REBOOT=ReallySuppress'
$validExitCodes         = @(0)

	$packageArgs = @{
	  packageName       = $env:ChocolateyPackageName
	  unzipLocation     = $toolsDir
	  fileType          = $fileType
	  url               = $url
	  softwareName      = $softwareName
	  checksum          = $checksum
	  checksumType      = $checksumType
	  silentArgs        = $silentArgs
	  validExitCodes    = $validExitCodes
	}

Install-ChocolateyPackage @packageArgs
