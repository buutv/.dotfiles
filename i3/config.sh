workspace1="1: "
workspace2="2: "
workspace3="3: "
workspace4="4: "
workspace5="5: "
workspace6="6: ?"
workspace7="7: ?"
workspace8="8: ?"
workspace9="9: ?"
workspace10="10: ?"

# Tap click
xinput --set-prop --type=int --format=8 "SynPS/2 Synaptics TouchPad" "Synaptics Tap Action" 0 0 0 0 1 2 3

# Natural scrolling
xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Scrolling Distance" -114, -114

# Set up screens
if [ `xrandr | grep -c ' connected '` -eq 2 ]; then # dual-monitor
    if [ `xrandr | grep HDMI1 | grep -c ' connected '` -eq 1 ]; then
        xrandr --output eDP1 --auto --primary --output HDMI1 --auto --right-of eDP1
        xrandr --output eDP1 --mode 1360x768

        i3-msg "workspace $workspace1; move workspace to output eDP1"
        i3-msg "workspace $worspace2; move workspace to output eDP1"
        i3-msg "workspace $worspace3; move workspace to output HDMI1"
        i3-msg "workspace $worspace4; move workspace to output HDMI1"
        i3-msg "workspace $worspace5; move workspace to output HDMI1"
        i3-msg "workspace $worspace6; move workspace to output eDP1"
        i3-msg "workspace $worspace7; move workspace to output eDP1"
        i3-msg "workspace $worspace8; move workspace to output eDP1"
        i3-msg "workspace $worspace9; move workspace to output eDP1"
        i3-msg "workspace $worspace10; move workspace to output eDP1"
    fi
else
    xrandr --output eDP1 --auto --primary --mode 1920x1080

    i3-msg "workspace $workspace1; move workspace to output eDP1"
    i3-msg "workspace $workspace2; move workspace to output eDP1"
    i3-msg "workspace $workspace3; move workspace to output eDP1"
    i3-msg "workspace $workspace4; move workspace to output eDP1"
    i3-msg "workspace $workspace5; move workspace to output eDP1"
    i3-msg "workspace $workspace6; move workspace to output eDP1"
    i3-msg "workspace $workspace7; move workspace to output eDP1"
    i3-msg "workspace $workspace8; move workspace to output eDP1"
    i3-msg "workspace $workspace9; move workspace to output eDP1"
    i3-msg "workspace $workspace10; move workspace to output eDP1"
fi
