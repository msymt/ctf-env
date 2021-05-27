#include <stdio.h>

int add(int, int);

int add(int x, int y){
  int z;
  
  z = x + y;

  return z;
}

int main(void) {
  int a;
  int b;
  int c;

  printf("Input number a: ");
  scanf("%d", &a);
  printf("Input number b: ");
  scanf("%d", &b);

  c = add(a, b);

  printf("%d\n", c);
  
  return 0;
}