#include <stdio.h>
#include <time.h>

long func (long a) {
  return a / 1000;
}

int main () {
  clock_t start = clock();

  long d = 0.0;

  for (long i = 0; i < 100000000; i++)
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

    d += func(i);
  }

  clock_t end = clock();
  clock_t elapsed = (end - start) / (CLOCKS_PER_SEC / 1000); 

  printf("%ld\n", d);
  printf("%lu ms\n", elapsed);
}