
if pgrep -x "Zscaler" > /dev/null; then
    export http_proxy=http://127.0.0.1:9000
    export https_proxy=http://127.0.0.1:9000
fi
eval $(/opt/homebrew/bin/brew shellenv)
alias j8="export JAVA_HOME=/Library/Java/JavaVirtualMachines/liberica-jdk-8-full.jdk/Contents/Home; java -version"
alias j11="export JAVA_HOME=/Library/Java/JavaVirtualMachines/liberica-jdk-11-full.jdk/Contents/Home; java -version"

source /Users/VW8E0VU/.docker/init-zsh.sh || true # Added by Docker Desktop

eval "$(starship init zsh)"

alias ls='ls --color=auto'
alias ll='ls -la --color=auto'

alias vi='nvim'
alias vim='nvim'

alias c='clear'

alias pycharm="/Applications/PyCharm\ CE.app/Contents/MacOS/pycharm"

alias luca="echo luca ist ein stinker"
