
#!/bin/bash

export PATH="/home/ahs/.local/bin:$PATH"

picom -b &
eww daemon &
volctl &
nm-applet &
mkfifo /tmp/vol-icon && ~/.config/qtile/scripts/vol_icon.sh &