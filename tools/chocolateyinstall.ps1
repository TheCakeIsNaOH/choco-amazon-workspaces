$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'amazon-workspaces'
$fileType	= 'msi'
$url	= 'https://d2td7dqidlhjx7.cloudfront.net/prod/global/windows/Amazon+WorkSpaces.msi'
$softwareName	= "Amazon WorkSpaces*"
$checksum	= '67DA5034BB031B1F94DEB8F6A5E68B88049068BB6D44462FEFCC2B1125B0B635'
$checksumType	= 'sha256'
$silentArgs	= '/qn REBOOT=ReallySuppress'
$validExitCodes		= @(0)

	$packageArgs = @{
	  packageName		= $env:ChocolateyPackageName
	  unzipLocation		= $toolsDir
	  fileType			= $fileType
	  url				= $url
	  softwareName		= $softwareName
	  checksum      	= $checksum
	  checksumType		= $checksumType
	  silentArgs		= $silentArgs
	  validExitCodes	= $validExitCodes
	}

Install-ChocolateyPackage @packageArgs
