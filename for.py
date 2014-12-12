import time
d = 0
i = 0
s = int(round(time.time() * 1000))
while i < 100000000:
    d += i >> 1
    i=i+1
e = int(round(time.time() * 1000))
print d 
print e - s