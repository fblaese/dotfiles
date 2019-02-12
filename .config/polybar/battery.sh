#!/bin/bash

# This function returns an awk script
# Which prints the battery percentage
# It's an ugly way to include a nicely indented awk script here
get_awk_source() {
cat <<EOF
	BEGIN {
		FS="=";
	}
\$1 ~ /ENERGY_FULL$/ {
	f += \$2;
}
\$1 ~ /ENERGY_NOW\$/ {
	n += \$2;
}
\$1 ~ /CHARGE_FULL$/ {
	f += \$2;
}
\$1 ~ /CHARGE_NOW\$/ {
	n += \$2;
}
END {
	print int(100*n/f);
}
EOF
}

BATTERIES=/sys/class/power_supply/BAT*/uevent
charge=$(cat $BATTERIES | awk -f <(get_awk_source))

if [ $charge -lt 10 ]; then
	exit 0
else
	exit 1
fi
