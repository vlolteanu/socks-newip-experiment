#! /bin/bash

for i in {1..10}
do
	iptables -F
	./pass alexa50ro.txt "$i\_noproxy"
	./proxyme.sh
	./pass alexa50ro.txt "$i\_proxy"
done
