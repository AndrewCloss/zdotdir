#!/bin/zsh
#
# .aliases - Set whatever shell aliases you want.
#

# single character aliases - be sparing!
alias _=sudo
alias l=ls
alias g=git

# git
alias ga='git add .'
alias gs='git status'
alias gd='git diff'
alias gp='git push'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gca='git commit --amend --no-edit'

# more ways to ls (mask)
alias ls='exa -l --color=always --icons --group-directories-first'
alias la='exa -lah --color=always --icons --group-directories-first'
alias ldot='exa -ld --color=always --icons --group-directories-first .*'

# cat (mask)
alias bat=batcat

# find
alias fzf='fzf --preview "batcat --color=always {}"'
alias fd='find . -type d -name'
alias ff='find . -type f -name'

# tar
alias tarls='tar -tvf'
alias untar='tar -xf'

# vi (mask)
alias vi=vim

# fix common typos
alias quit='exit'
alias cd..='cd ..'


# url encode/decode
alias urldecode='python3 -c "import sys, urllib.parse as ul; \
    print(ul.unquote_plus(sys.argv[1]))"'
alias urlencode='python3 -c "import sys, urllib.parse as ul; \
    print (ul.quote_plus(sys.argv[1]))"'

# misc
alias please=sudo
alias zshrc='${EDITOR:-vim} "${ZDOTDIR:-$HOME}"/.zshrc'
alias zbench='for i in {1..10}; do /usr/bin/time zsh -lic exit; done'
alias zdot='cd ${ZDOTDIR:-~}'
