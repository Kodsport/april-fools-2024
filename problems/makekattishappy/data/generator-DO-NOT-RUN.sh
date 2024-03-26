#!/usr/bin/env bash

PPATH=$(realpath ..)
. gen.sh

#ulimit -s unlimited

use_solution harry.py

group group1 100
tc_manual ../manual/case1.in
tc_manual ../manual/case2.in
tc_manual ../manual/case3.in

