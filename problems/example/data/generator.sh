#!/bin/bash
. ../../testdata_tools/gen.sh

ulimit -s unlimited
use_solution tab.cpp

compile gen_special.py
compile gen_same.py

# Generate answers to sample cases
samplegroup
sample 1
sample 2
sample 3

group group1 21
limits maxN=15 maxM=50
tc 1
tc 2
tc 3
tc_manual ../manual/tab1a.in
tc_manual ../manual/tab1b.in
tc_manual ../manual/tab1c.in
tc_manual ../manual/tab1d.in
tc_manual ../manual/tab1e.in
tc_manual ../manual/tab1f.in
tc_manual ../manual/tab1g.in
tc_manual ../manual/tab1h.in
tc_manual ../manual/tab1i.in
tc_manual ../manual/tab1j.in
tc_manual ../manual/tab1k.in
tc g1-spec1 gen_special n=15 m=50 
tc g1-spec2 gen_special n=15 m=15 
tc g1-spec3 gen_special n=15 m=5 
tc g1-spec4 gen_special n=15 m=5 r=500000
tc g1-spec5 gen_same n=15 m=50

group group2 31
limits maxN=100 maxM=50
include_group group1
tc_manual ../manual/tab2a.in
tc_manual ../manual/tab2b.in
tc_manual ../manual/tab2c.in
tc_manual ../manual/tab2d.in
tc_manual ../manual/tab2e.in
tc_manual ../manual/tab2f.in
tc_manual ../manual/tab3a.in
tc_manual ../manual/tab3b.in
tc_manual ../manual/tab3c.in
tc_manual ../manual/tab3d.in
tc_manual ../manual/tab3e.in
tc_manual ../manual/tab3f.in
tc g2-spec1 gen_special n=100 m=50
tc g2-spec2 gen_special n=100 m=15
tc g2-spec3 gen_special n=100 m=5
tc g2-spec4 gen_special n=100 m=50 r=500000

group group3 18
limits maxN=500 maxM=50
include_group group2
tc_manual ../manual/tab4a.in
tc_manual ../manual/tab4b.in
tc_manual ../manual/tab4c.in
tc_manual ../manual/tab4d.in
tc_manual ../manual/tab4e.in
tc_manual ../manual/tab4f.in
tc_manual ../manual/tab5a.in
tc_manual ../manual/tab5b.in
tc_manual ../manual/tab5c.in
tc_manual ../manual/tab5d.in
tc_manual ../manual/tab5e.in
tc_manual ../manual/tab5f.in
tc g3-spec1 gen_special n=500 m=50
tc g3-spec2 gen_special n=500 m=15
tc g3-spec3 gen_special n=500 m=5
tc g3-spec4 gen_special n=500 m=50 r=500000

group group4 30
include_group group3
tc_manual ../manual/tab6a.in
tc_manual ../manual/tab6b.in
tc_manual ../manual/tab6c.in
tc_manual ../manual/tab6d.in
tc_manual ../manual/tab6e.in
tc_manual ../manual/tab6f.in
tc_manual ../manual/tab7a.in
tc_manual ../manual/tab7b.in
tc_manual ../manual/tab7c.in
tc_manual ../manual/tab7d.in
tc_manual ../manual/tab7e.in
tc_manual ../manual/tab7f.in
tc_manual ../manual/tab8a.in
tc_manual ../manual/tab8b.in
tc_manual ../manual/tab8c.in
tc_manual ../manual/tab8d.in
tc_manual ../manual/tab8e.in
tc_manual ../manual/tab8f.in
tc_manual ../manual/tabOcenSpecial1.in
tc g4-spec1 gen_special n=1000 m=200




