#!/bin/sh

charging="Charging"
discharging="Discharging"
fully_charged="Fully-charged"
battery_status=""

percentage=$(upower -i /org/freedesktop/UPower/devices/battery_battery | grep -E "percentage" | sed s/"percentage:"// | tr -d "[:space:]")
  state=$(upower -i /org/freedesktop/UPower/devices/battery_battery | grep -E "state" | sed s/"state:"// | tr -d "[:space:]")
  state=$(echo "$state" | sed "s/.*/\u&/")
  if [ "$state" = "$charging" ]
  then

      battery_status=$(echo "⚡: $percentage $state")

  elif [ "$state" = "$discharging" ]
  then
      
      battery_status=$(echo " $percentage $state")

  elif [ "$state" = "$fully_charged" ]
  then
      
      battery_status=$(echo "☻: $percentage $state")

  else

      battery_status=$(echo "?")

  fi
  echo $battery_status
