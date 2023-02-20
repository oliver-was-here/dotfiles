echo 'loading ~/.zshrc...'

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

#
## ----------- aliases and macros
#
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
alias g="git"
alias gs="git status"
alias zshrc="vim ~/.zshrc"
alias gitconfig="vim ~/.gitconfig"
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


#
## ----------- zsh config
#

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# execution timestamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"


#
## ----------- exports/env-tuning
#

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

#
## ----------- plugins
#

source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

plugins=(git zsh-history-substring-search zsh-autosuggestions)
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
