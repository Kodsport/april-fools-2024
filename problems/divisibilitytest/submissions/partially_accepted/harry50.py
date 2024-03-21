#!/usr/bin/python3

def check2(n):
    return int(n[-1])%2 == 0

def check3(n):
    return sum(n)%3 == 0

def check5(n):
    return int(n[-1])%5 == 0

def check11(n):
    odd = even = 0
    for i in range(len(n)):
        if i%2:
            odd += n[i]
        else:
            even += n[i]
    
    return (odd-even)%11 == 0

n = [*map(int,[*input()])]

if check2(n):
    print(2)
elif check3(n):
    print(3)
elif check5(n):
    print(5)
elif check11(n):
    print(11)
else:
    print(7)