#!/bin/bash

function lock {
    i3lock --ignore-empty-password \
        --show-failed-attempts \
        --image "/home/andrematias/Pictures/wallpapers/titan_atack_4.jpg"
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        i3-msg exit
        ;;
    reboot)
        sudo reboot
        ;;
    poweroff)
        sudo poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|reboot|poweroff}"
        exit 2
esac

exit 0
