#!/bin/bash

# Example notifier script -- lowers screen brightness, then waits to be killed
# and restores previous brightness on exit.

## CONFIGURATION ##############################################################

# Brightness will be lowered to this value.
min_brightness=0.2

# If your video driver works with xbacklight, set -time and -steps for fading
# to $min_brightness here. Setting steps to 1 disables fading.
fade_time=200
fade_steps=20

# If you have a driver without RandR backlight property (e.g. radeon), set this
# to use the sysfs interface and create a .conf file in /etc/tmpfiles.d/
# containing the following line to make the sysfs file writable for group
# "users":
#
#     m /sys/class/backlight/acpi_video0/brightness 0664 root users - -
#
#sysfs_path=/sys/class/backlight/acpi_video0/brightness

# Time to sleep (in seconds) between increments when using sysfs. If unset or
# empty, fading is disabled.
fade_step_time=0.0002

###############################################################################

set_brightness() {
	xrandr --output HDMI-A-0 --brightness $1
	xrandr --output HDMI-A-1 --brightness $1
}

fade_brightness() {
	local level
	for level in {99..20..2}; do
		set_brightness 0.$level
		#sleep $fade_step_time
	done
}

trap 'exit 0' TERM INT
trap "set_brightness 1.0; kill %%" EXIT
set_brightness 0.4
sleep 2147483647 &
wait
