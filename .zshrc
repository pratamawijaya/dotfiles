
export PATH="/usr/local/mysql/bin:/Users/pratama/Documents/SDK/platform-tools:/Users/pratama/Documents/SDK/tools:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/pratama/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"
export ANDROID_HOME="/Users/pratama/Documents/SDK"
export ANDROID_NDK_HOME="/Users/pratama/Documents/NDK"
export NDK_HOME="/Users/pratama/Documents/NDK"
export KOTLIN_HOME="/Users/pratama/.sdkman/candidates/kotlin/current"
export GRADLE_HOME="/Users/pratama/.sdkman/candidates/gradle/current"
export JAVA_HOME="/Users/pratama/.sdkman/candidates/java/current"
#export COMPOSER_HOME="~/.composer/vendor/bin"

export PATH=/Users/pratama/Documents/SDK/platform-tools:$PATH
export PATH=/Users/pratama/Documents/SDK/tools:$PATH
export PATH=/Users/pratama/Documents/SDK/tools/bin:$PATH
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_NDK_HOME
export PATH=$KOTLIN_HOME/bin:$JAVA_HOME/bin:$PATH
export PATH=$PATH:~/.composer/vendor/bin
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
#export PATH="$PATH:/.composer/vendor/bin/vendor/bin"

# Settings path for Go
export GOROOT="/usr/local/go"
export GOPATH="$HOME/Documents/Workspace/GoLang/src"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOBIN"
export PATH="$PATH:$GOROOT/bin"

# setting path flutter
export PATH="$PATH:$HOME/flutter/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/pratama/.sdkman"
[[ -s "/Users/pratama/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/pratama/.sdkman/bin/sdkman-init.sh"
