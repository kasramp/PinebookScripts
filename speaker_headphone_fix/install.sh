#!/bin/bash

if [ "$(id -u)" -ne "0" ]; then
    echo "This script requires root."
    exit 1
fi

if [ 0 -eq $# ]
  then
      echo -e "Use 'install.sh -i' to apply the patch." 
      echo -e "Use 'install.sh -u' to remove the patch."
  elif [ $1 = "-i" ]
  then
      apt -y install acpid
      chmod a+x set_default_sound_card.sh
      source set_default_sound_card.sh
      chmod a+x set_default_volumes.sh
      source set_default_volumes.sh
      cp audio_jack_plugged_in /etc/acpi/events/
      cp audio_jack_plugged_in.sh /etc/acpi/
      chmod a+x /etc/acpi/audio_jack_plugged_in.sh
      echo "Done - you should reboot now."

  elif [ $1 = "-u" ]
  then
      apt -y remove acpid
      rm /etc/acpi/events/audio_jack_plugged_in
      rm /etc/acpi/audio_jack_plugged_in.sh
      echo "Done - you should reboot now."
fi

