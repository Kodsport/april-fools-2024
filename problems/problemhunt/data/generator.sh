#!/bin/bash
. ../../testdata_tools/gen.sh

ulimit -s unlimited
use_solution harry.py

compile gen_math.py


# Generate answers to sample cases
#samplegroup




group full 100
# sample
include_group sample

