import time
d = 0
i = 0

def func(a):
  return a / 1000
  
s = int(round(time.time() * 1000))
while i < 100000000:
  d += i >> 1
  i=i+1
  if d % 2 == 0:
    d += 1
    d += 1
    d += 1
    d += 1
    d += 2
  d += func(i)

e = int(round(time.time() * 1000))
print(d)
print(str(e - s) + ' ms')