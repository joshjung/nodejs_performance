d = 0.0
i = 0
s = Time.now

while i < 100000000 do
	d += i >> 1
	i = i + 1
end

e = Time.now

puts d
puts e - s