#!/usr/bin/env python3

n = input()

if n.isnumeric():

    rows = [*map(int,input().split())]

    print(min(rows)+1)
else:
    print("APRIL{wait...why_1s_ther3_4_flag_h3re}")
