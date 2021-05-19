set_brightness() {
	for monitor in $(xrandr --listmonitors | tail -n +2 | awk '{ print $4 }'); do
		xrandr --output $monitor --brightness $1
	done
}

reset() {
	kill %%
	set_brightness 1
}

dim() {
	set_brightness 0.2
}

trap 'exit 0' TERM INT
trap 'reset' EXIT
dim
sleep infinity &
wait
