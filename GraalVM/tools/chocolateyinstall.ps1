﻿$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\GraalVM'
$url64       = 'https://github.com/oracle/graal/releases/download/vm-19.0.0/graalvm-ce-windows-amd64-19.0.0.zip'
$checksum64  = 'C60094DFFBF1A8DDA3A6901C3ED60F30E03BDFB88D9258F1EF32223D48C94817'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\graalvm-ce-19.0.0 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\GraalVM\graalvm-ce-19.0.0\bin' -PathType 'Machine'
