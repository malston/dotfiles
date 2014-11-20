# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
else
  alias ls="ls -F --color"
  alias l="ls -a --color"
  alias ll="ls -l --color"
  alias la="ls -A --color"
fi

alias flushdns="dscacheutil -flushcache"
alias grep="grep --color"
alias -g biggu=/Volumes/Big Disk
alias -g passport=/Volumes/My Passport

# Basic directory operations
alias ....='cd ../../..'
alias ...='cd ../..'
alias ..='cd ..'

alias -- -='cd -'

# # Super user
alias _='sudo'

## Mutt in english
alias mutt="LANG=en_US mutt"


## Git Aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
#alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias got='git '
alias get='git '

## Vagrant Aliases
alias vag='vagrant'
alias vagup='vagrant up'
alias vagdestroy='vagrant destroy'
alias vagssh='vagrant ssh'
alias vaghalt='vagrant halt'

# TMUX Aliases
alias mux=tmuxinator
alias tmuxn="tmux new -s"
alias tmuxa="tmux attach -t"
alias tmuxs="tmux switch -t"
alias tmuxl="tmux list-sessions"
alias tmuxd="tmux detach"
alias tmuxk="tmux kill-session -t"

## Miscellaneous Aliases
alias htop='sudo htop'
alias tcpd8080="sudo tcpdump -s 0 -A -i lo0 'tcp port 8080 and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)'"
alias tcpd8085="sudo tcpdump -s 0 -A -i lo0 'tcp port 8085 and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)'"
