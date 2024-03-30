#!/bin/bash
. ../../testdata_tools/gen.sh

#ulimit -s unlimited
use_solution joshua.py

# Generate answers to sample cases
samplegroup
sample 1


group full 100
include_group sample
