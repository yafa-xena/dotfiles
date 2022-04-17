#!/bin/sh



# alias

[ -f $HOME/.config/aliasrc ] && . ~/.config/aliasrc

# History


HISTSIZE="100000"
HISTFILESIZE="100000"
export HISTTIMEFORMAT="%F %T:`whoami` "
shopt -s histappend
HISTFILE=$HOME/.history.log
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

# GPG
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
eval $( gpg-agent --daemon --enable-ssh-support )

