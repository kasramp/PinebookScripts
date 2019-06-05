#!/bin/bash

case "$1" in 
    jack/headphone)
        case "$3" in
            plug)
                amixer -c 1 sset 'External Speaker' off
                amixer -c 1 sset 'Headphone' on
            ;;
            unplug)
                echo "Hello"
                amixer -c 1 sset 'External Speaker' on
                amixer -c 1 sset 'Headphone' off
            ;;
        esac
    ;;
esac
