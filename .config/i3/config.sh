ws1="1:  "
ws2="2:  "
ws3="3:  "
ws4="4:  "
ws5="5:  "
ws6="6:  "

# dual-monitor
if [ `xrandr | grep -c ' connected '` -eq 2 ]; then
    if [ `xrandr | grep HDMI-1 | grep -c ' connected '` -eq 1 ]; then
        # If home QHD screen       
        if [ `xrandr | grep HDMI-1 | grep -c '708mm'` -eq 1 ]; then
            xrandr --output eDP-1 --auto --primary --output HDMI-1 --mode 2560x1440_30.00 --right-of eDP-1
        else
            xrandr --output eDP-1 --auto --primary --output HDMI-1 --auto --right-of eDP-1
        fi
        
        # If not already configured
        if [ `xrandr | grep eDP-1 | grep 'connected' | grep 'primary' | grep -c '1360x768'` -ne 1 ]; then
            xrandr --output eDP-1 --mode 1360x768
        fi
        
        i3-msg "workspace $ws2; move workspace to output eDP-1"
        i3-msg "workspace $ws3; move workspace to output HDMI-1"
        i3-msg "workspace $ws4; move workspace to output HDMI-1"
        i3-msg "workspace $ws5; move workspace to output HDMI-1"
        i3-msg "workspace $ws6; move workspace to output eDP-1"
        i3-msg "workspace $ws1; move workspace to output eDP-1"
    fi
else
    # If not already configured
    if [ `xrandr | grep eDP-1 | grep 'connected' | grep 'primary' | grep -c '1920x1080'` -ne 1 ]; then
        xrandr --output eDP-1 --auto --primary --mode 1920x1080
    fi
    
    i3-msg "workspace $ws2; move workspace to output eDP-1"
    i3-msg "workspace $ws3; move workspace to output eDP-1"
    i3-msg "workspace $ws4; move workspace to output eDP-1"
    i3-msg "workspace $ws5; move workspace to output eDP-1"
    i3-msg "workspace $ws6; move workspace to output eDP-1"
    i3-msg "workspace $ws1; move workspace to output eDP-1"
fi

feh --bg-fill $HOME/wallpaper.jpg --bg-fill $HOME/wallpaper.jpg
