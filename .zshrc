# Shell Settings
setopt correct
export PROMPT="[%n:%/] "
export TERM=xterm
export EDITOR=vim
export TAGS_TYPE=ctags
export JAVA_HOME="/Library/Java/Home/"
export ANDROID_HOME="/usr/bin/android-sdk-mac_x86/"
export PATH="/usr/bin/android-sdk-mac_x86/platform-tools:/usr/bin:/usr/bin/android-sdk-mac_x86/tools:/usr/local/apache-maven-2.1.2/bin:$PATH"

# General aliases
alias vi=vim
alias c=clear
alias ls="ls -G"
alias la="ls -Gla"
alias vz="vim ~/.zshrc"
alias sz="source ~/.zshrc"
alias grep="grep -n"
alias -g ...="../.." 
alias -g ....="../../.." 
alias -g .....="../../../.."

# Git
alias gdf="git diff > blah.diff && vim blah.diff"
alias gdfw="git diff -w > blah.diff && vim blah.diff"
alias gdfc="git diff --cached > blah.diff && vim blah.diff"
alias gdfcw="git diff -w --cached > blah.diff && vim blah.diff"
alias gits="clear && git status"
alias gitb="git branch"
alias -g gco="git checkout"
alias rmb="rm blah.diff"
alias gpod="git pull origin development"
alias gcod="git checkout origin development"
alias mci="mvn clean install"
alias -g adbi="adb install -r"

# History settings
HISTFILE=~/.history
SAVEHIST=10000
HISTSIZE=10000
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_REDUCE_BLANKS
