#!/usr/bin/python3

import sys
import random
import math

def cmdlinearg(name, default=None):
    for arg in sys.argv:
        if arg.startswith(name + "="):
            return arg.split("=")[1]
    if default is None:
        print("missing parameter", name)
        sys.exit(1)
    return default

random.seed(int(cmdlinearg('seed', sys.argv[-1])))

ans = int(cmdlinearg('ans',0))
l = int(cmdlinearg("l",10**5-1))

ans = 0 # TODO REMOVE
if ans:
    pass # TODO

else:
    num = []
    for _ in range(l):
        num.append(random.randint(0,9))
    print("".join(map(str,num)))


