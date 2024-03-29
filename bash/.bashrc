# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !

# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

source $HOME/.profile

# options
set -o vi
complete -cf doas
if [[ $- == *i* ]]
then
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
fi

# alias
alias x='htop'
alias c='ncmpcpp'
alias ls='ls --color=always'
alias ll='ls -l'
alias la='ls -a'
alias rm='rm -v'
alias cp='cp -v'
alias du='du -hs'
alias open='xdg-open'

# save path on cd
# function cd {
#     builtin cd "${@:1:1}"
#     pwd > ~/.last_dir
# }

# restore last saved path
# if [ -f ~/.last_dir ]
#     then cd `cat ~/.last_dir`
# fi

# No double entries in the shell history.
export HISTCONTROL="$HISTCONTROL erasedups:ignoreboth"

# starship
export STARSHIP_CONFIG=$HOME/.config/starship/config.toml

__main() {
    local major="${BASH_VERSINFO[0]}"
    local minor="${BASH_VERSINFO[1]}"

    if ((major > 4)) || { ((major == 4)) && ((minor >= 1)); }; then
        source <(/usr/bin/starship init bash --print-full-init)
    else
        source /dev/stdin <<<"$(/usr/bin/starship init bash --print-full-init)"
    fi
}

__main
unset -f __main
