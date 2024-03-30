#!/bin/bash
. ../../testdata_tools/gen.sh

#ulimit -s unlimited
use_solution precomp_small.cpp

compile gen.py

# Generate answers to sample cases
samplegroup
sample 1
sample 2
sample 3

group full 100
include_group sample
tc g1-1 gen
tc g1-2 gen
tc_manual worst
tc_manual worst2
for i in {1..100}
do
tc g1-rand-$i gen

done