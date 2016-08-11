#!/bin/bash

# output directory
OUT_D="proton_bg_s11"

# W range 
W_START=1486
W_END=2000

for W in `seq $W_START $W_END`;
do
    tail -181 W_$W.dat > $OUT_D/W_$W.dat
done

