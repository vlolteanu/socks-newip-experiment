#! /bin/bash

set +e

site_list=$1
cookie=$2

results_file="results/$cookie.results"
log_file="results/$cookie.log"

for site in $(cat $site_list | cut -f 2)
do
	duration=$(/usr/bin/time -f "%e" ./headless.sh "$site" 2>&1)
	echo $site $duration >> "$results_file"
done
