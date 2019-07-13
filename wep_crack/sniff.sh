# airodump-ng collect packets until IVs gets repeated
# use .cap file and use statistical attack to know key, using aircrack-ng
#create fake packets
#associate with AP before connect
# -a access point mac
# -h spec mac address (first 6)
# ARP replay attack
#when packets are collected aircrack-ng *.cap

rm -r wep_packets
mkdir wep_packets
airodump-ng --bssid $AP --channel $CHANNEL --write wep_packets/wep_test $INT





