#!/bin/bash
 
case "$1" in
    start)
	current_time=$(date '+%k%M')
        if [ $current_time -ge 2000 -o $current_time -lt 0700 ]; then
            echo 1900 > "/sys/devices/virtual/disp/disp/attr/color_temperature"
        fi
        ;;
esac