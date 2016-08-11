#!/bin/bash

# output directory
#OUT_D="pi0_pi+_neutron_full"
OUT_D="pi0_pi-_proton_full"

# W range 
W_START=1219
W_END=2000

for W in `seq $W_START $W_END`;
do
    tail -100 W_$W.dat | cut -c23-100 > $OUT_D/W_$W.dat
done

