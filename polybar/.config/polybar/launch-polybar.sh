#! /bin/bash

killall polybar

for m in $(xrandr -q | grep " connected" | cut -d" " -f1); do
    if [[ $(ps -e | grep polybar | cut -f9 | wc -c) -eq 7 ]]; then
        MONITOR=$m polybar secondary &
    else
        MONITOR=$m polybar primary &
    fi
done
