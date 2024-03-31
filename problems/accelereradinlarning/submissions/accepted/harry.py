#!/usr/bin/python3

n = int(input())
a = [*map(int,input().split())]

s = sum(a)

badbitset = 1

for x in a:
    badbitset |= badbitset << x

for i in range(s//2,-1,-1):
    if badbitset & (1<<i):
        print(s-i)
        exit()
