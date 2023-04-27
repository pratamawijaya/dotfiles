set -x LANG en_US.UTF-8

## Android
set --export ANDROID_HOME $HOME/Documents/SDK/Android
set -gx PATH $ANDROID_HOME/cmdline-tools/latest/bin $PATH
set -gx PATH $ANDROID_HOME/tools $PATH
set -gx PATH $ANDROID_HOME/tools/bin $PATH
set -gx PATH $ANDROID_HOME/platform-tools $PATH

## Flutter
set -gx PATH $HOME/Documents/SDK/flutter/bin $PATH

# Golang
set -gx PATH /usr/local/go/bin $PATH


function applink
    adb shell am start -W -a android.intent.action.VIEW -d $argv
end

function take 
    mkdir -p $argv
    cd $argv
end

if type -q exa
	alias ll "exa -l -g --icons"
	alias lla "ll -a"
end


## Java

## Autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

## Alias
alias vim='nvim'
## Git Alias
alias g='git'
alias gac='git add . && git commit'
alias gpub='git push --set-upstream origin'
alias gco='git checkout -b'
alias gfp='git fetch && git pull'
alias gst='git status'
alias glcc="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative;"

## Misc
alias pingg='ping 8.8.8.8'


if status is-interactive
    # Commands to run in interactive sessions can go here
end
