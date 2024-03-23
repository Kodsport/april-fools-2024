#!/bin/bash
. ../../testdata_tools/tempgen-harry.sh

ulimit -s unlimited
use_solution harry1p.py

compile gen.py


# Generate answers to sample cases
samplegroup
sample 1
sample 2
sample 3
#sample 4

group group1 1
limits maxN=100000
tc 1
tc 2
tc 3
tc_manual ../manual/b2.in
tc_manual ../manual/b3.in
#tc_manual ../manual/b5.in
tc_manual ../manual/b7.in
tc_manual ../manual/b11.in
tc g1-001 gen n=16807 #ans 7
tc g1-002 gen n=4 #ans=2
tc g1-003 gen n=21 #ans=3
tc g1-004 gen n=49 #ans=7
tc g1-005 gen n=121 #l=4 ans=11
tc g1-006 gen n=16805 #ans 5
tc g1-007 gen n=17303 #ans 11
tc g1-008 gen n=25 #ans=5
tc g1-009 gen n=100000 #ans=2
tc g1-010 gen n=13 #ans=13
tc g1-011 gen n=19 #ans=19
tc g1-012 gen n=17 #ans=17
tc g1-013 gen n=8303 #ans=19
tc g1-014 gen n=169 #ans=13
tc g1-015 gen n=4913 #ans=13

group group2 10
tc 2
tc b2
tc g1-002
tc g1-009
tc_manual ../manual/max.in
tc_manual ../manual/twos/p2-001.in
tc_manual ../manual/twos/p2-002.in
tc_manual ../manual/twos/p2-003.in


group group3 10
tc 1
tc b3
tc g1-003
tc_manual ../manual/threees/p3-001.in
tc_manual ../manual/threees/p3-002.in

group group4 10
tc 3
tc g1-008
tc g1-006
tc_manual ../manual/fives/p5-001.in
tc_manual ../manual/fives/p5-002.in


group group5 10
#tc 4
tc b7
tc g1-001
tc g1-004
tc_manual ../manual/large7.in
tc_manual ../manual/larger7.in
tc_manual ../manual/largerer7.in
tc_manual ../manual/expo7_1.in
tc_manual ../manual/expo7.in
tc_manual ../manual/expo7_2.in
tc_manual ../manual/sevens/p7-001.in

group group6 10
tc b11
tc g1-005
tc g1-007
tc_manual ../manual/elevens/p11-001.in
tc_manual ../manual/elevens/p11-002.in

group group7 49
tc expo7_2
tc_manual ../manual/expo13.in
tc largerer7
include_group group1
tc expo7
include_group group2
include_group group3
include_group group4
include_group group5
include_group group6
tc_manual ../manual/expo17.in
tc_manual ../manual/expo19.in
tc_manual ../manual/expo13_1.in
tc_manual ../manual/expo19_1.in
tc_manual ../manual/expo17_1.in
