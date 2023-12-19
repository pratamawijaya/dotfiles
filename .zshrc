# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/pratamanurwijaya/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

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

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
 export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# function

#git delete branch by prefix
gdb(){
  git branch | grep $1 | xargs git branch -D
}

glcc(){
  git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative;
}

gac(){
	git add . && git commit
}

gfp(){
  git fetch && git pull
}

take(){
  mkdir -p $1
  cd $1
}


eval "$(rbenv init -)"

export PATH="/usr/local/opt/ncurses/bin:$PATH"

eval "$(pyenv init --path)"

#Autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ -n "$PS1" -a -n "$BASH_VERSION" ]; then source ~/.bashrc; fi
. "$HOME/.cargo/env"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/pratamanurwijaya/.sdkman"
[[ -s "/Users/pratamanurwijaya/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/pratamanurwijaya/.sdkman/bin/sdkman-init.sh"



eval "$(zoxide init zsh)"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/pratamanurwijaya/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/pratamanurwijaya/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/pratamanurwijaya/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/pratamanurwijaya/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# pnpm
export PNPM_HOME="/Users/pratamanurwijaya/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
