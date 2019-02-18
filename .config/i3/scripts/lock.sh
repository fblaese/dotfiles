#!/bin/sh
revert() {
	xset dpms 300 300 300
}
trap revert HUP INT TERM
xset dpms 10 10 10
i3lock -n -f -c 000000
revert
