# prompt
smiley() {
    if [ "$?" == "0" ]; then echo "😀"; else echo "😢"; fi
}

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1] /'
}

export PS1="\$(smiley)\e[1m\e[34m \w \[\033[31m\]\$(parse_git_branch)\[\033[01;34m\]\n$\[\033[00m\] "
