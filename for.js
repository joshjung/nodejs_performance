var d = 0.0,
    start = new Date().getTime();

for (var i = 0; i < 100000000; i++)
{
  d += i >> 1;

  if (d % 2 == 0)
  {
    d++;
    d++;
    d++;
    d++;
    d+=2;
  }

  d+= func(i);
}

var end = new Date().getTime();

console.log(d);
console.log((end - start) + ' ms');

function func(a) {
  return a / 1000;
}