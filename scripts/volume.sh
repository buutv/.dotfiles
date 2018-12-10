#!/usr/bin/env bash


volume=$(amixer -D pulse get Master | grep -E -o '([0-9]{1,3}?)%' | head -1)
muted=$(amixer -D pulse get Master | grep -c '\[off\]')

if [ "$muted" -eq 2 ]; then
    echo "  <span color='red'> ${volume}</span> "   
else
    if [ "${volume::-1}" -lt 5 ]; then
        echo "   $volume "
    elif [ "${volume::-1}" -gt 50 ]; then
        echo "   $volume "       
    else 
        echo "   $volume "
    fi
fi
