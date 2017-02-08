# Path to your oh-my-zsh installation.
export ZSH=/Users/pratama/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bureau"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-flow osx npm battery zsh-syntax-highlighting)

# User configuration

export PATH="/usr/local/mysql/bin:/Users/pratama/Documents/SDK/platform-tools:/Users/pratama/Documents/SDK/tools:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/pratama/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

export ANDROID_HOME="/Users/pratama/Documents/SDK"
export NDK_HOME="/Users/pratama/Documents/NDK"
export KOTLIN_HOME="/Users/pratama/.sdkman/candidates/kotlin/current"
export GRADLE_HOME="/Users/pratama/.sdkman/candidates/gradle/current"
export JAVA_HOME="/Users/pratama/.sdkman/candidates/java/current"
export SIGN_KEYPASS="kulina"
export KEYSTORE_PASSWORD="pratamawijaya"
export PATH=$PATH:/Users/pratama/Documents/SDK/platform-tools
export PATH=$PATH:/Users/pratama/Documents/SDK/tools
export PATH=$KOTLIN_HOME/bin:$JAVA_HOME/bin:$PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim -N'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#alias vim="/usr/local/bin/mvim"
alias tmux="tmux -2"
alias composer="php /usr/local/bin/composer.phar"
alias androidstudio="open -a /Applications/Android\ Studio.app"
alias pingg="ping google.com"
# git push origin tag_name
alias gput="git push origin"
# git push --set-upstream origin
alias gpub="git push --set-upstream origin"
alias mkdir="mkdir -p"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Sonnar
SONAR_RUNNER_HOME=/usr/local/Cellar/sonar-runner/2.5/libexec

glcc(){
  git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative;
}

gac(){
	git add . && git commit
}

take(){
  mkdir -p $1
  cd $1
}

# The next line enables shell command completion for gcloud.
source '/Users/pratama/google-cloud-sdk/completion.zsh.inc'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/pratama/.sdkman"
[[ -s "/Users/pratama/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/pratama/.sdkman/bin/sdkman-init.sh"
eval "$(pyenv init -)"

export NVM_DIR="/Users/pratama/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh