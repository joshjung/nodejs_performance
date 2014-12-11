var d = 0.0,
    start = new Date().getTime();

for (var i = 0; i < 100000000; i++)
{
  d += i >> 1;
}

var end = new Date().getTime();

console.log(d);
console.log(end - start);