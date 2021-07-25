#!/bin/sh

val=$(printf "%.0f" $(light -G))

if [ $val -ge 40 ]; then
	step=10
elif [ $val -ge 10 ]; then
	step=5
else
	step=1
fi

if [ $1 == "dec" ]; then
	let val=$val-$step
else
	let val=$val+$step
fi


#xbacklight -set $val -time 200
light -S $val
