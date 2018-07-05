#!/bin/bash

export LOGFILE="$HOME/logs/xinitrc.log"

log() {
    echo "[$(date +%FT%T)] $*" >> "$LOGFILE"
}

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

autostart() {
    if [[ -d "$HOME/.autostart" ]] ; then
        log "Looking for autostart files."
        for f in "$HOME/.autostart/"*.sh ; do
            if [[ -x "$f" ]] ; then
                log "Executing autostart file \"$f\""
                . "$f"
            fi
        done
    fi
}

start_i3wm() {
    log "starting i3"
    exec i3 -c "$HOME/.i3/config" >> "$HOME/logs/i3.log"
}

autostart
start_i3wm
