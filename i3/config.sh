# Tap click
xinput --set-prop --type=int --format=8 "SynPS/2 Synaptics TouchPad" "Synaptics Tap Action" 0 0 0 0 1 2 3

# Natural scrolling
xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Scrolling Distance" -114, -114

# Set up screens
if [ `xrandr | grep -c ' connected '` -eq 2 ]; then # dual-monitor
    if [ `xrandr | grep HDMI1 | grep -c ' connected '` -eq 1 ]; then
        xrandr --output eDP1 --auto --primary --output HDMI1 --auto --right-of eDP1
        xrandr --output eDP1 --mode 1360x768
    fi
else
    xrandr --output eDP1 --auto --primary --mode 1920x1080
fi
