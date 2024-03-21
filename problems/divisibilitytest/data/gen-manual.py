import random

l = 10**5-1
num = []
for _ in range(l):
    num.append(random.randint(0,9))
print("".join(map(str,num)))