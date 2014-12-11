#include <stdio.h>
#include <time.h>

int main () {
  clock_t start = clock();

  long d = 0.0;

  for (long i = 0; i < 100000000; i++)
  {
    d += i >> 1;    
  }

  clock_t end = clock();
  clock_t elapsed = (end - start) / (CLOCKS_PER_SEC / 1000); 

  printf("%ld\n", d);
  printf("%lu\n", elapsed);
}