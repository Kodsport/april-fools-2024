#!/usr/bin/python3

n = int(input())
a = [*map(int,input().split())]

s = sum(a)

temp = 0

a.sort()
for x in a:
    if temp+x > s//2:
        break
    temp += x
print(s-temp)
