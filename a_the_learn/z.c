#include <stdio.h>
void func1(int *a, int **b);

void func1(int *a, int **b)
{
   (*a)++;
   printf("a %d, c %d\n", *a, **b);
   (*b)++;//这里虽然传进来的是指针的形式，但其实是指针c的地址，
          //可以认为这里本质还是值传递，只不过这个值是地址值
   printf("a %d, c %d\n", *a, **b);
}

// int main()
// {
//     int a[2] = {10, 20};
//     int *b = &a[0];
//     int *c = a+1;
//     int **d = &c;
//     for (int i = 0; i < 3; i++)
//     {
//       /* code */
//       printf("a %d\n", a[i]);
//     }
    
//     printf("a[0] = %d   a[1] = %d\n", a[0], a[1]);
//     printf("c %d\n", c);
//     func1(b, d);
//     printf("a[0] = %d   a[1] = %d\n", a[0], a[1]);

//     return 0;
// }
// 指针的理解
// int main () {
//   int *i, j = 5;
//   int* a, b = 6;
//   char *(arr[10]);
//   char (*arr_o)[4];
//   printf("size arr:%d\n", sizeof(arr));
//   printf("size arr_o:%d\n", sizeof(*arr_o));
//   i = &j;
//   // *a = b;
//   printf("size i:%d - j:%d \n", sizeof(i), sizeof(j));
//   printf("size a:%d - b:%d \n", sizeof(a), sizeof(b));
//   printf("size int:%d - int*:%d \n", sizeof(int), sizeof(int*));

//   printf("value i:%d - j:%d \n", *i, j);
//   // printf("value i:%d - j:%d \n", *a, b);
//   return 0;
// }