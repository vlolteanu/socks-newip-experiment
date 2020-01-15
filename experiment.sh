#! /bin/bash

for i in {1..10}
do
	iptables -F
	./pass alexa50.txt "$i\_noproxy"
	./proxyme.sh
	./pass alexa50.txt "$i\_proxy"
done
