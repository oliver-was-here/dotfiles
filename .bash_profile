if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Terminal coloring
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ls='ls -GFh'
alias weather='curl wttr.in/nyc'
alias psef='ps -ef | grep -i '

### BEST ALIASES EVER
alias grep='grep --color=auto'
alias l='ls -lhaFG'
alias ll='ls -lhaFrtG'
alias h='history'
alias gh='history | grep -i $1'
alias psef='ps -ef | head -1;  ps -ef | grep -v grep | grep --color=auto -i $1'
alias d='du -sch ./*'
alias f='find . -iname $1'
alias ip='curl ifconfig.co'
alias iip='ifconfig | grep -o "inet \(192\.168\.\d\+\.\d\+\)" | grep -o "192\.168\.\d\+\.\d\+"'
alias weather='curl wttr.in/nyc'
alias tag='ctags -R --exclude=.git -exclude=log -exclude=logs'
# OSX
alias off='pmset displaysleepnow'


### EXPLAINSHELL $$$
# Open a command in http://explainshell.com/: explain [command]
# From: https://github.com/schneems/explain_shell
function explain {
  # base url with first command already injected
  # $ explain tar
  #   => http://explainshel.com/explain/tar?args=
  url="http://explainshell.com/explain/$1?args="

  # removes $1 (tar) from arguments ($@)
  shift;

  # iterates over remaining args and adds builds the rest of the url
  for i in "$@"; do
    url=$url"$i""+"
  done

  # opens url in browser
  open $url
}

# command line emoji
PS1="🌊🌊 \u@\h:\W\$"
