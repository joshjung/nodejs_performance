import time
d = 0.0
i = 0.0

def func(a):
  return a / 1000.0
  
s = int(round(time.time() * 1000))
while i < 100000000:
  d += int(i) >> 1
  i=i+1
  if d % 2 == 0:
    d += 1
    d += 1
    d += 1
    d += 1
    d += 2
    d = d * 1.00000001;
  d += func(i)

e = int(round(time.time() * 1000))
print(d)
print(str(e - s) + ' ms')