#!/usr/bin/env bash

PPATH=$(realpath ..)
. gen.sh

#ulimit -s unlimited

use_solution harry.py

samplegroup
sample 1

group group1 100
tc 1
#tc_manual ../manual/highnoon.in


