#!/bin/bash

# load xmodmap settings (swap CAPS/CTRL_L)
# note `setxkbmap -option` will reset meta keys
# /etc/default/keyboard: XKBOPTIONS="ctrl:swapcaps" to swap permanently
#xmodmap ~/.xmodmap

# send ESC on CTRL release if nothing else pressed
pkill xcape
xcape -e 'Control_L=Escape'

