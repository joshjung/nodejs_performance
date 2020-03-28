d = 0.0
i = 0.0
s = Time.now

def time_diff_milli(start, finish)
  (finish - start) * 1000.0
end

def func(a)
  a / 1000
end

while i < 100000000 do
	d += i.round >> 1
	i = i + 1
	if (d % 2 == 0) then
      d = d+1
      d = d+1
      d = d+1
      d = d+1
      d = d+2
      d = d * 1.00000001;
    end
    d += func(i)
end

e = Time.now

puts d
puts time_diff_milli(s, e).to_s + ' ms'