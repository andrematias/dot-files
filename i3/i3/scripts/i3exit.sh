#!/bin/bash

function lock {
    i3lock --ignore-empty-password \
        --show-failed-attempts \
        --image "/home/matias/Pictures/wallpapers/joker.png"
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        i3-msg exit
        ;;
    reboot)
        reboot
        ;;
    poweroff)
        poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|reboot|poweroff}"
        exit 2
esac

exit 0
