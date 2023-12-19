ZSH="/Users/pratamanurwijaya/.oh-my-zsh/"

# ZSH_THEME=robbyrussell

#Plugins
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/opt/ncurses/bin:$PATH"


#PATH
export ANDROID_HOME="/Users/pratamanurwijaya/Documents/SDK/Android"
export ANDROID_NDK="/Users/pratamanurwijaya/Documents/NDK"
export ANDROID_SDK_ROOT="/Users/pratamanurwijaya/Documents/SDK/Android"
export ANDROID_TOOLS="/Users/pratamanurwijaya/Documents/SDK/Android/tools/bin"
export FLUTTER_HOME="/Users/pratamanurwijaya/Documents/SDK/flutter/bin"

# export FIREBASE_TOKEN="1//0gXLSpyztR4RnCgYIARAAGBASNwF-L9IrZ-dcxHbWiIb4dWa-BpZNoqCRFdFusoolCLREg8A8VZ2pEue1M5drvquDcZjtfYFkJ5o"
export PUB_CACHE="$HOME/.pub-cache/bin"

export PATH=$PATH:$HOME/.apk2gold-reloaded
export PATH=$PATH:$ANDROID_SDK_ROOT/tools
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_NDK
export PATH=$PATH:$ANDROID_TOOLS
export PATH=$PATH:$FLUTTER_HOME
# export PATH=$PATH:$JAVA_HOME
export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"
# golang
export PATH=$PATH:/usr/local/go/bin
# bazel build
export PATH="$PATH:$HOME/bin"
# flutter pub cache
export PATH=$PATH:$PUB_CACHE
export PATH="$PATH:$PUB_CACHE/bin"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PATH":"$HOME/.maestro/bin"

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:$HOME/.local/bin"

export PATH="$PATH:/Users/pratamanurwijaya/.foundry/bin"

export JAVA_11_HOME=/Library/Java/JavaVirtualMachines/temurin-11.jdk/Contents/Home
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/temurin-8.jdk/Contents/Home
export JAVA_17_HOME=/Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home

alias java11="export JAVA_HOME=$JAVA_11_HOME"
alias java8="export JAVA_HOME=$JAVA_8_HOME"
alias java17="export JAVA_HOME=$JAVA_17_HOME"

alias droidlog="~/Documents/Workspaces/Tools/pidcat/pidcat.py"

# Set default to Java 11
java11

# User configuration
# 
alias gw="./gradlew"
#alias vim="/usr/local/bin/mvim"
alias vim="nvim"
alias composer="php /usr/local/bin/composer"
alias pingg="ping 8.8.8.8"
# git push origin tag_name
alias gput="git push origin"
alias gpuc="git push -u origin HEAD"
# git push --set-upstream origin
alias gpub="git push --set-upstream origin"
alias mkdir="mkdir -p"
alias phpserver="php -S localhost:8000"
alias checktemp="watch --color -n0 istats"
alias showdate="date \"+%H:%M:%S   %d/%m/%y \""
alias gdebug="./gradlew clean assembleDebug"
# flutter
alias flpgr="flutter pub get run"
alias flpga="flutter pub add"
alias flcr="flutter create -t skeleton"
alias drun="dart run build_runner watch -d"
alias emu="$ANDROID_HOME/tools/emulator"
alias runemu="emu -avd flutter_emulator"
alias ll="ls -l"

# tmux
alias tm="tmux"
alias tml="tmux ls"

tmn(){
  tmux new -s $1
}

tma(){
  tmux a -t $1
}

tmk(){
  tmux kill-session -t $1
}



alias nv="nvim"
alias kubectl="minikube kubectl --"
# android
alias applink="adb shell am start -W -a android.intent.action.VIEW -d '$1'"
alias gradle-all-deps='./gradlew dependencies $(./gradlew -q projects \
    | grep -Fe ---\ Project \
    | sed -Ee "s/^.+--- Project '"'([^']+)'/\1:dependencies/"'")'

#Autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# pnpm
export PNPM_HOME="/Users/pratamanurwijaya/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end



eval "$(starship init zsh)"
