#!/bin/bash

# Observable (DSG, P, S, T)
OBS="DSG"

# W range 
W_START=1074
W_END=2000

# theta range
THETA_START=0
THETA_END=180
THETA_STEP=3

for W in `seq $W_START $W_END`;
do
    echo "Getting SAID @ W = $W MeV"
    curl "http://gwdac.phys.gwu.edu/cgi-bin/go3pr?sl=Now&rt=1&ot="$OBS"&iv=A&il="$THETA_START"&ii="$THETA_STEP"&iu="$THETA_END"&fv=W&fn="$W"&jpeg=GO99&u=995&l=1005" 2> /dev/null | html2text | tee W_$W.dat
    echo "Got SAID @ W = $W MeV"
    sleep 1
done
