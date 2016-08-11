#!/bin/bash

# output directory
OUT_D="pi0_proton_full"

# W range 
W_START=1074
W_END=2000

for W in `seq $W_START $W_END`;
do
    tail -181 W_$W.dat > $OUT_D/W_$W.dat
done

