#include <stdio.h>
#include <stdlib.h>

int main()
{
    //ASHNAH KHALID KHAN ERP # 22889
    //int n = 2;
    //printf("%p\n", &n);
    //int *Npointer;
    //Npointer = &n; //gives memory address of n
    //printf("pointer : %p\n", Npointer); //prints address
    //printf("value at pointer : %d\n", *Npointer); //prints value at address
    //Npointer = 30; //updates value of n


    int array[10];
    int *ArrayPointer;
    ArrayPointer = array;
    int v = 10;
    for (   ; ArrayPointer < &array[10]; ArrayPointer++)
    {
        *ArrayPointer = v;
        printf("Address: %p Value: %d\n", ArrayPointer, *ArrayPointer);
        v = v + 10;
    }

    char CArray[5];
    char *CharPointer;
    CharPointer = CArray;
    //CharPointer = ;
    for (   ; CharPointer < &CArray[5]; CharPointer++)
    {
        *CharPointer = '*';
        for (int i = 5; &CArray[i] != CharPointer ; i--)
        {
            printf(" %c ", *CharPointer);
        }
        printf("\n");
    }
   return 0;
}
