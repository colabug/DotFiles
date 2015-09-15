# Shell Settings
setopt correct
export PROMPT="[%n:%/] "
export TERM=xterm
export EDITOR=vim
export TAGS_TYPE=ctags
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_67.jdk/Contents/Home

# Android
export ANDROID_AVD_HOME=$HOME/.android/avd
export ANDROID_HOME=/Users/colabug/Library/Android/sdk
export LD_LIBRARY_PATH=$ANDROID_HOME/tools/lib
export ANDROID_NDK_HOME=/Users/colabug/Library/Android/ndk/android-ndk-r10e
alias cda="cd $ANDROID_HOME"
alias cdas="cd $ANDROID_HOME/samples"
alias cdma="cd /Users/colabug/Documents/Code/Android/"
alias adbi="adb install -r"

# Wear
alias wconn="adb forward tcp:4444 localabstract:/adb-hub; adb connect localhost:4444"
alias wscreen="adb -s localhost:4444 shell screencap -p /sdcard/DCIM/screenshot1.png;adb -s localhost:4444 pull /sdcard/DCIM/screenshot1.png;open screenshot1.png "

# Gradle
export GRADLE_HOME=/usr/local/bin/gradle-2.1
alias ga="./gradlew assemble"
alias gd="./gradlew assembleDebug"
alias gca="./gradlew clean assemble"
alias gcad="./gradlew clean assembleDebug"
alias gc="./gradlew clean"
alias gch="./gradlew check"

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
alias -g ......="../../../../.."
alias -g .......="../../../../../.."
alias sc="aspell -c "

# Git
alias gdf="git diff > blah.diff && vim blah.diff"
alias gdfw="git diff -w > blah.diff && vim blah.diff"
alias gdfc="git diff --cached > blah.diff && vim blah.diff"
alias gdfcw="git diff -w --cached > blah.diff && vim blah.diff"
alias gits="clear && git status"
alias gitb="git branch"
alias -g gco="git checkout"
alias gpod="git pull origin develop"
alias gcod="git checkout develop"
alias rmb="rm blah.diff"
alias rma="rm -rf gen out target tmp build *.diff"

# History settings
HISTFILE=~/.history
SAVEHIST=10000
HISTSIZE=10000
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_REDUCE_BLANKS

# Path
export PATH="$ANDROID_NDK_HOME:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/tools/proguard/bin:$LD_LIBRARY_PATH:$M2_HOME/bin:$GRADLE_HOME/bin:$JAVA_HOME/bin:/usr/local/bin:/usr/bin:/Applications/calibre.app/Contents/MacOS:/opt/local/bin:/opt/local/sbin:$HOME/bin:$PATH"
