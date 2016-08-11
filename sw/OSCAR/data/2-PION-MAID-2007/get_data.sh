#!/bin/bash

# W range 
W_START=1218
W_END=2000

for W in `seq $W_START $W_END`;
do
    echo "Getting MAID @ W = $W MeV"
    
    # pi+ pi0 n
    #curl "http://wwwkph.kph.uni-mainz.de/cgi-bin/maid1?switch=312&param0=5&param11=1&param12=1&param14=1&param15=1&param16=1&param17=1&param19=1&param20=1&param21=1&param22=1&value42="$W"&param40=2&param50=1&value41=100" 2> /dev/null | html2text | tee W_$W.dat
    
    # pi- pi0 p
    curl "http://wwwkph.kph.uni-mainz.de/cgi-bin/maid1?switch=312&param0=6&param11=1&param12=1&param14=1&param15=1&param16=1&param17=1&param19=1&param20=1&param21=1&param22=1&value42="$W"&param40=2&param50=1&value41=100" 2> /dev/null | html2text | tee W_$W.dat
    
    echo "Got MAID @ W = $W MeV"
    sleep 1
done
