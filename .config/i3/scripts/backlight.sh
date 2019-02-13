#!/bin/sh

val=$(printf "%.0f" $(xbacklight))

if [ $val -ge 40 ]; then
	step=10
else
	step=5
fi

if [ $1 == "dec" ]; then
	let val=$val-$step
else
	let val=$val+$step
fi


xbacklight -set $val -time 200
