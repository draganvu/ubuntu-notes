#!/bin/sh
#
# ubuntu-barebones ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# use capslock as second control key
setxkbmap -option ctrl:nocaps

xrdb -merge .Xdefaults &

# launch ratpoison wm with startx
exec /usr/bin/ratpoison
