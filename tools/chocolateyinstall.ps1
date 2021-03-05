$ErrorActionPreference  = 'Stop';
$toolsDir               = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName            = 'amazon-workspaces'
$fileType               = 'msi'
$url                    = 'https://d2td7dqidlhjx7.cloudfront.net/prod/global/windows/Amazon+WorkSpaces.msi'
$softwareName           = "Amazon WorkSpaces*"
$checksum               = 'DEF18D197BEA9CAC36F3FC79513A9D78675294B5AE955A0858E5C0E07DB28D0B'
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
