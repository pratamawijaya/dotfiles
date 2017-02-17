
export PATH="/usr/local/mysql/bin:/Users/pratama/Documents/SDK/platform-tools:/Users/pratama/Documents/SDK/tools:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/pratama/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"
export PATH=/Users/pratama/Documents/SDK/platform-tools:$PATH
export PATH=/Users/pratama/Documents/SDK/tools:$PATH
export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
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

alias vim='mvim -v'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/pratama/.sdkman"
[[ -s "/Users/pratama/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/pratama/.sdkman/bin/sdkman-init.sh"
