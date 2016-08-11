#!/bin/bash

# output directory
OUT_D="stripped"

# W range 
W_START=1486
W_END=2000

for W in `seq $W_START $W_END`;
do
    cat W_$W.dat | tail -65 | head -61 > $OUT_D/W_$W.dat
done

