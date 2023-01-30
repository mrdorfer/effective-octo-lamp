

# Quick and Dirty to get the temperature of a Libre Computer "Le Potato"
# bakedpotato.sh

#!/bin/bash

CPU=$(cat /sys/devices/platform/scpi/scpi:sensors/hwmon/hwmon0/temp1_input)
CELSIUS=$(expr $CPU / 1000)
CTMP=$(echo "$CELSIUS * 1.8" | bc)
FAHRENHEIT=$(echo "$CTMP + 32" | bc)
echo -e "$CELSIUS°C\n$FAHRENHEIT°F\n"
