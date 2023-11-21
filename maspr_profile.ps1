oh-my-posh init pwsh --config 'C:\Users\maspr\AppData\Local\Programs\oh-my-posh\themes\easy-term.omp.json' | Invoke-Expression

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

Invoke-Expression (&starship init powershell)
