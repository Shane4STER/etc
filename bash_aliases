#!/bin/bash

# some more ls aliases
alias ls='ls -F --color'    		# add colors for filetype recognition
alias lx='ls -lXB'        			# sort by extension
alias lk='ls -lSr'        			# sort by size
alias la='ls -Al'        			# show hidden files
alias lr='ls -lR'        			# recursice ls
alias lt='ls -ltr'        			# sort by date
alias lm='ls -al |more'     		# pipe through 'more'
alias tree='tree -Cs'      		 	# nice alternative to 'ls'
alias ll='ls -l'        			# long listing
alias l='ls -hF --color'    		# quick listing
alias lsize='ls --sort=size -lhr' 	# list by size
alias lsd='ls -l | grep "^d"'   	#list only directories

#grep colouring
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#link conf
alias link.sh='~/etc/link.sh/link.sh -u ~/etc/.link.conf'

#Command substiution
alias ff='sudo find / -name $1'
alias df='df -h -x tmpfs -x usbfs'
alias psg='ps -ef | grep $1'
alias h='history | grep $1'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias which='type -all'
alias ..='cd ..'
alias path='echo -e ${PATH//:/\\n}'
alias vi='vim'
alias du='du -h --max-depth=1'