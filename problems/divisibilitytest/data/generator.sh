#!/bin/bash
. ../../testdata_tools/gen.sh

ulimit -s unlimited
use_solution harry.py

compile gen.py


# Generate answers to sample cases
samplegroup
sample 1
sample 2
sample 3

group smallN 1
limits 
tc 1
tc 2
tc 3
tc_manual ../manual/b2.in
tc_manual ../manual/b3.in
tc_manual ../manual/b5.in
tc_manual ../manual/b7.in
tc_manual ../manual/b11.in
tc g1-001 gen l=4 ans=7
tc g1-002 gen l=4 ans=11
tc g1-003 gen l=4 ans=2
tc g1-004 gen l=4 ans=3
tc g1-005 gen l=4 ans=5


group div2 10
limits 
tc 2
tc b2
tc g1-003
tc_manual ../manual/max.in
tc g2-001 gen l=10 ans=2
tc g2-002 gen l=100 ans=2

#tc g2-spec4 gen_special n=100 m=50 r=500000

group div3 10
limits
tc 1
#tc g3-spec4 gen_special n=500 m=50 r=500000

group div5 10
tc 3
#tc_manual ../manual/tab6a.in
#tc g4-spec1 gen_special n=1000 m=200

group div7 10
tc g7-001 gen ans=7

group div11 10
tc g11-001 gen ans=7

group full 49
include_group smallN
include_group div2
include_group div3
include_group div5
include_group div7
include_group div11

