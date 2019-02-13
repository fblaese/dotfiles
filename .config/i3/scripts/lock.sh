#!/bin/sh
revert() {
	xset -dpms
}
trap revert HUP INT TERM
xset dpms 10 10 10
i3lock -n -f -c 000000
revert
