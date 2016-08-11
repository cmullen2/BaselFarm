#!/bin/bash

# proton = 1 /neutron = 2
NUCL=2

# included terms (1=on, 0=off)
BORN=1
RHO=1
OMEGA=1
S11_1535=1
S11_1650=1
#P11_1440=1
P11_1710=1
P13_1720=1
D13_1520=1
D13_1700=1
D15_1675=1
F15_1680=1

# W range 
W_START=1486
W_END=2000

# theta range
THETA_START=0
THETA_END=180
THETA_STEP=1

for W in `seq $W_START $W_END`;
do
    echo "Getting MAID @ W = $W MeV"
    curl "http://wwwkph.kph.uni-mainz.de/cgi-bin/maid1?switch=65&param0="$NUCL"&param1=1&param11="$BORN"&param12="$RHO"&param13="$OMEGA"&param14="$S11_1535"&param15="$S11_1650"&param17="$P11_1710"&param18="$P13_1720"&param19="$D13_1520"&param20="$D13_1700"&param21="$D15_1675"&param22="$F15_1680"&param50=3&value35=0&value36="$W"&value37="$THETA_START"&value41="$THETA_STEP"&value42="$THETA_END"" 2> /dev/null | html2text | tee W_$W.dat
    echo "Got MAID @ W = $W MeV"
    sleep 1
done
