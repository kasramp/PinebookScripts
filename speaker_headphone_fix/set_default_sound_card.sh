#!/bin/bash

card=`cat /proc/asound/cards | grep -v 'hdmi' | grep -Po '^..' | xargs`

mv /etc/asound.conf /etc/asound.conf.old.bak
echo "defaults.pcm.card $card" > /etc/asound.conf
echo "defaults.ctl.card $card" >> /etc/asound.conf
