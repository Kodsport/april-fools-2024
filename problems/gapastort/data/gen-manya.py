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
n = int(cmdlinearg("n"))
p = int(cmdlinearg("p",100))

print(n)

out = ["A"]*(n*p//100) 

while len(out) < n:
    out.append(random.choice("GCT"))

random.shuffle(out)
print("".join(out))
