d = 0.0
i = 0
s = Time.now

def func(a)
  a / 1000
end

while i < 100000000 do
	d += i >> 1
	i = i + 1
	if (d % 2 == 0) then
      d=d+1
      d=d+1
      d=d+1
      d=d+1
    end
    d += func(i)
end

e = Time.now

puts d
puts e - s