﻿$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-11-openjdk-11.0.13.8-1/java-11-openjdk-11.0.13.8-1.windows.ojdkbuild.x86_64.msi'
  Checksum64 = '632030959d5d3f6e7b6e3fc2580e21c0a9f7174a94a68f36bcba28f34ce548f8'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
