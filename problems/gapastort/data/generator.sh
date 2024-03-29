#!/bin/bash
. ../../testdata_tools/gen.sh

#ulimit -s unlimited
use_solution harry.py

compile gen.py
compile gen-manya.py

# Generate answers to sample cases
samplegroup
sample 1
sample 2


group full 100
include_group sample
tc g1-01 gen n=1000
tc g1-02 gen n=1000
tc g1-03 gen n=1000
tc g1-04 gen-manya n=1000 p=0
tc g1-05 gen-manya n=1000 p=10
tc g1-06 gen-manya n=1000 p=30
tc g1-07 gen-manya n=1000 p=70
tc g1-08 gen-manya n=1000 p=100