# $MAC current mac for $INT
# $interface name
#$AP mac for AP
aireplay-ng --fakeauth 0 -a $AP -h $MAC $INT
