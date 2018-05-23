
# Concepts:
#   - https://www.tldp.org/LDP/abs/html/intandnonint.html
#   - https://unix.stackexchange.com/questions/38175/difference-between-login-shell-and-non-login-shell
#   - https://shreevatsa.wordpress.com/2008/03/30/zshbash-startup-files-loading-order-bashrc-zshrc-etc
#   - https://news.ycombinator.com/item?id=4369934
#   - https://news.ycombinator.com/item?id=4369485
#   - https://airbladesoftware.com/notes/bash-startup-files/
#   - http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html
#
#
# When Bash starts, it executes the commands in a variety of different scripts.
#
#   1) When Bash is invoked as an interactive login shell, it first reads
#      and executes commands from the file /etc/profile, if that file
#      exists. After reading that file, it looks for ~/.bash_profile,
#      ~/.bash_login, and ~/.profile, in that order, and reads and executes
#      commands from the first one that exists and is readable.
#
#   2) When a login shell exits, Bash reads and executes commands from the
#      file ~/.bash_logout, if it exists.
#
#   3) When an interactive shell that is not a login shell is started
#      (e.g. a GNU screen session), Bash reads and executes commands from
#      ~/.bashrc, if that file exists. This may be inhibited by using the
#      --norc option. The --rcfile file option will force Bash to read and
#      execute commands from file instead of ~/.bashrc.
#

# If not running interactively, return early
[[ $- != *i* ]] && return

for file in ~/.bashrc.d/{aliases,exports,functions,options}; do
    [ -r "$file" ] && source "$file"
done
unset file

## PATHS {{{

PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

## }}}

## COMPLETIONS {{{

bash_completion="$(brew --prefix 2>/dev/null)/etc/bash_completion"
if [ -r "$bash_completion" ]; then
  source "$bash_completion"
fi
unset bash_completion

## }}}

## PROMPT {{{

# Set prompt
PS1="\[\033[49;37m\]\u@gfk:\[\033[49;33m\]\w $\[\033[0m\] "

## }}}

# vim:foldmethod=marker:foldlevel=0
