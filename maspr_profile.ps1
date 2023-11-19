oh-my-posh init pwsh --config 'C:\Users\maspr\AppData\Local\Programs\oh-my-posh\themes\easy-term.omp.json' | Invoke-Expression
# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

set-alias -name ll -value ls
set-alias -name gw -value ./gradlew

function gst { git status }
function work { cd "E:\Workspaces\"}
function java11 {
  $env:JAVA_HOME = "C:\Program Files\Eclipse Adoptium\jdk-11.0.21.9-hotspot"
  $Env:Path="$Env:JAVA_HOME\bin;$Env:Path"
  set "Path=%JAVA_HOME%\bin;%Path%"
}
function java17 {
  $env:JAVA_HOME = "C:\Program Files\Eclipse Adoptium\jdk-17.0.8.7-hotspot"
  $Env:Path="$Env:JAVA_HOME\bin;$Env:Path"
  set "Path=%JAVA_HOME%\bin;%Path%"
}
