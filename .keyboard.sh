#!/bin/bash

# send ESC on CTRL release if nothing else pressed
xcape -e 'Control_L=Escape'

# load xmodmap settings (swap CAPS/CTRL_L)
# note `setxkbmap -option` will reset meta keys
xmodmap ~/.xmodmap

