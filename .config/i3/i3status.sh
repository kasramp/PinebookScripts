#!/bin/sh

charging="Charging"
discharging="Discharging"
fully_charged="Fully-charged"
battery_status=""

update_battery_status() {
  percentage=$(upower -i /org/freedesktop/UPower/devices/battery_battery | grep -E "percentage" | sed s/"percentage:"// | tr -d "[:space:]")
  state=$(upower -i /org/freedesktop/UPower/devices/battery_battery | grep -E "state" | sed s/"state:"// | tr -d "[:space:]")
  state=$(echo "$state" | sed "s/.*/\u&/")
  if [ "$state" = "$charging" ]
  then

      battery_status=$(echo "CHR ⚡: $percentage $state")

  elif [ "$state" = "$discharging" ]
  then
      
      battery_status=$(echo "BAT ⏳: $percentage $state")

  elif [ "$state" = "$fully_charged" ]
  then
      
      battery_status=$(echo "CHR ☻: $percentage $state")

  else

      battery_status=$(echo "UNK ?")
  fi
}

i3status | (read line && echo "$line" && read line && echo "$line" && read line && echo "$line" && update_battery_status && while :
do
  read line
  update_battery_status
  echo ",[{\"full_text\":\"${battery_status}\" },${line#,\[}" || exit 1
done)
