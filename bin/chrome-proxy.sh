cd ~
chromium --temp-profile --user-data-dir=tmp/chrome --proxy-server=socks://localhost:8080 --proxy-bypass-list="<-loopback>" &
