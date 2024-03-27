#!/bin/bash
. ../../testdata_tools/gen.sh

ulimit -s unlimited
use_solution joshua.cpp

compile gen.py
compile gen_mod.py

# Generate answers to sample cases
samplegroup
sample 1
sample 2
sample 3
sample 4


group full 100
include_group sample

tc g1 gen n=1000 v=1000
tc g2 gen n=1000 v=999
tc g3 gen n=1000 v=952
tc g4 gen n=123 v=312
tc g5 gen_mod n=1000 v=99
tc g6 gen_mod n=1000 v=3
tc g7 gen_mod n=1000 v=5
tc g8 gen_mod n=1000 v=16
