#include <stdio.h>
#include <time.h>

long double func (long double a) {
  return a / (long double)1000.0;
}

int main () {
  clock_t start = clock();

  long double d = 0.0;

  for (long double i = 0; i < 100000000; i++)
  {
    d += (long double)((long long)i >> 1);

    if (((long long)d) % 2 == 0)
    {
      d++;
      d++;
      d++;
      d++;
      d+=2;
      d*=1.00000001L;
    }

    d += func(i);
  }

  clock_t end = clock();
  clock_t elapsed = (end - start) / (CLOCKS_PER_SEC / 1000); 

  printf("%Le\n", d);
  printf("%lu ms\n", elapsed);
}