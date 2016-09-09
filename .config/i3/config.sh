ws1="1:  "
ws2="2:  "
ws3="3:  "
ws4="4:  "
ws5="5:  "
ws6="6: ? "
ws7="7: ? "
ws8="8: ? "
ws9="9: ? "
ws10="10: ? "

# Tap click
xinput --set-prop --type=int --format=8 "SynPS/2 Synaptics TouchPad" "Synaptics Tap Action" 0 0 0 0 1 2 3

# Natural scrolling
xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Scrolling Distance" -114, -114

# Set up screens
if [ `xrandr | grep -c ' connected '` -eq 2 ]; then # dual-monitor
    if [ `xrandr | grep HDMI1 | grep -c ' connected '` -eq 1 ]; then
        xrandr --output eDP1 --auto --primary --output HDMI1 --auto --right-of eDP1
        xrandr --output eDP1 --mode 1360x768

        i3-msg "workspace $ws2; move workspace to output eDP1"
        i3-msg "workspace $ws3; move workspace to output HDMI1"
        i3-msg "workspace $ws4; move workspace to output HDMI1"
        i3-msg "workspace $ws5; move workspace to output HDMI1"
        i3-msg "workspace $ws6; move workspace to output eDP1"
        i3-msg "workspace $ws7; move workspace to output eDP1"
        i3-msg "workspace $ws8; move workspace to output eDP1"
        i3-msg "workspace $ws9; move workspace to output eDP1"
        i3-msg "workspace $ws10; move workspace to output eDP1"
        i3-msg "workspace $ws1; move workspace to output eDP1"
    fi
else
    xrandr --output eDP1 --auto --primary --mode 1920x1080

    i3-msg "workspace $ws2; move workspace to output eDP1"
    i3-msg "workspace $ws3; move workspace to output eDP1"
    i3-msg "workspace $ws4; move workspace to output eDP1"
    i3-msg "workspace $ws5; move workspace to output eDP1"
    i3-msg "workspace $ws6; move workspace to output eDP1"
    i3-msg "workspace $ws7; move workspace to output eDP1"
    i3-msg "workspace $ws8; move workspace to output eDP1"
    i3-msg "workspace $ws9; move workspace to output eDP1"
    i3-msg "workspace $ws10; move workspace to output eDP1"
    i3-msg "workspace $ws1; move workspace to output eDP1"
fi

pgrep --exact xev || xev -root -event randr | grep --line-buffered ScreenChangeNotify | while read change; do pkill -RTMIN+4 i3blocks; done
