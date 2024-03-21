#!/bin/bash
. ../../testdata_tools/gen.sh

ulimit -s unlimited
use_solution cheat.py

compile gen_math.py


# Generate answers to sample cases
samplegroup
sample 1
sample 2
sample 3
sample 4
sample 5
sample 6
sample 7

#types:
#from sample
#eval
#polyphia diskografi
#3st random

group full 110
# sample
include_group sample

#polyphia
tc_manual ../manual/polyphia_false1.in
tc_manual ../manual/polyphia_false2.in
tc_manual ../manual/polyphia_false3.in
tc_manual ../manual/polyphia_false4.in
tc_manual ../manual/polyphia_true1.in
tc_manual ../manual/polyphia_true2.in
tc_manual ../manual/polyphia_true3.in
tc_manual ../manual/polyphia_true4.in

# math
tc_manual ../manual/math_false.in
tc_manual ../manual/math_true.in
tc math-1 gen_math
tc math-2 gen_math
tc math-3 gen_math
tc math-4 gen_math
tc math-5 gen_math

# evil
tc_manual ../manual/evil_1.in
tc_manual ../manual/evil_2.in
tc_manual ../manual/evil_3.in
