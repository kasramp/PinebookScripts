#!/bin/bash

case "$1" in 
    jack/headphone)
        case "$3" in
            plug)
                amixer sset 'speaker volume' 0
                # amixer -D pulse sset Master 50% not working yet
                amixer sset 'headphone volume' 100
            ;;
            unplug)
                amixer sset 'headphone volume' 0
                # amixer -D pulse sset Master 50% not working yet
                amixer sset 'speaker volume' 100
            ;;
        esac
    ;;
esac

