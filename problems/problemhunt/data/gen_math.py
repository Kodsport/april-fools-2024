#!/usr/bin/python3

import sys
import random
import math
from random import randint as rand

def cmdlinearg(name, default=None):
    for arg in sys.argv:
        if arg.startswith(name + "="):
            return arg.split("=")[1]
    if default is None:
        print("missing parameter", name)
        sys.exit(1)
    return default

random.seed(int(cmdlinearg('seed', sys.argv[-1])))

l = rand(1, 5)
s = ""
for i in range(l):
    s += str(rand(0, 300))+random.choice(("+","-","*"))
s = s[:-1]
if rand(0,1):
    s += "=" + str(eval(s))
else:
    s += "=" + str(rand(0, 1000))
print(s)