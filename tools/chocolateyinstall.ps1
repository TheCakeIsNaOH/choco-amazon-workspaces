$ErrorActionPreference  = 'Stop';
$toolsDir               = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName            = 'amazon-workspaces'
$fileType               = 'msi'
$url                    = 'https://d2td7dqidlhjx7.cloudfront.net/prod/global/windows/Amazon+WorkSpaces.msi'
$softwareName           = "Amazon WorkSpaces*"
$checksum               = '5632F7595045477AC2BD185F6984CFE5862CF2485F49CAD2BDBE2CBB817FEEDC'
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
