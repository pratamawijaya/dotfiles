# ---------- Zinit ----------
# --- https://gist.github.com/n1snt/2cccc8aa5f7b645a7628d3512c70deb6 ---
export ZINIT_HOME="$HOME/.local/share/zinit/zinit.git"

if [[ -r "$ZINIT_HOME/zinit.zsh" ]]; then
    source "$ZINIT_HOME/zinit.zsh"
fi

# ---------- Prompt ----------
export STARSHIP_LOG=error
eval "$(starship init zsh)"

# ---------- Completion ----------
autoload -Uz compinit

# Use a cached completion dump
mkdir -p "${XDG_CACHE_HOME:-$HOME/.cache}"
compinit -d "${XDG_CACHE_HOME:-$HOME/.cache}/zcompdump"

# Better completion UX
zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true
zstyle ':completion:*' verbose yes

# Case-insensitive + partial matching
zstyle ':completion:*' matcher-list \
    'm:{a-z}={A-Za-z}' \
    'r:|=*' \
    'l:|=* r:|=*'

# Group matches
zstyle ':completion:*' group-name ''

# Group descriptions
zstyle ':completion:*:descriptions' format '%F{yellow}%d%f'

# Colored completion menus
zstyle ':completion:*' list-colors ''

# Better process completion
zstyle ':completion:*:*:*:*:processes' command \
    'ps -u $USER -o pid,user,comm -w -w'

# ---------- Plugins ----------

# Fish-style suggestions
zinit light zsh-users/zsh-autosuggestions

# Syntax highlighting (must be last)
zinit light zsh-users/zsh-syntax-highlighting

# ---------- History ----------
HISTFILE="$HOME/.zsh_history"
HISTSIZE=5000
SAVEHIST=5000

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
setopt EXTENDED_HISTORY

# ---------- Shell ----------
setopt AUTO_CD
setopt INTERACTIVE_COMMENTS
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

# ---------- Lazy NVM ----------
export NVM_DIR="$HOME/.nvm"

load-nvm() {
    unset -f node npm npx nvm
    [[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
}

for cmd in node npm npx nvm; do
    eval "$cmd() {
        load-nvm
        command $cmd \"\$@\"
    }"
done

# --------- Alias -------
alias gw="./gradlew"
#alias vim="/usr/local/bin/mvim"
alias vim="nvim"
alias composer="php /usr/local/bin/composer"
alias pingg="ping 8.8.8.8"
alias gco="git checkout -b "
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
alias ll="ls -al"

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


# Local bin
export PATH="$HOME/.local/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# bun completions
[ -s "/Users/pratamanurwijaya/.bun/_bun" ] && source "/Users/pratamanurwijaya/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk
