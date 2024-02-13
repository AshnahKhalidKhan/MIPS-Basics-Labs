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


    //QUESTION 1
    printf("\n\nNOW PRINTING INTEGER ARRAY:    \n");

    int array[2];
    int *IntegerArrayPointer;
    IntegerArrayPointer = array;
    int v = 2;
    for (   ; IntegerArrayPointer < &array[2]; IntegerArrayPointer++)
    {
        *IntegerArrayPointer = v;
        printf("Address: %p Value: %d\n", IntegerArrayPointer, *IntegerArrayPointer);
        v = v + 2;
    }
    printf("\nDifference between integer pointers:\n");
    int **IntPtr2 = &IntegerArrayPointer;
    printf("%p\n", IntPtr2);
    IntPtr2++;
    printf("%p\n", IntPtr2);

    printf("\n\nNOW PRINTING CHAR ARRAY:    \n");

    char Carray[2];
    char *CharArrayPointer;
    CharArrayPointer = Carray;
    char c = '.';
    for (   ; CharArrayPointer < &Carray[2]; CharArrayPointer++)
    {
        *CharArrayPointer = c;
        printf("Address: %p Value: %c\n", CharArrayPointer, *CharArrayPointer);
    }
    printf("\nDifference between char pointers:\n");
    char **CharPtr2 = &CharArrayPointer;
    printf("%p\n", CharPtr2);
    CharPtr2++;
    printf("%p\n", CharPtr2);


    printf("\n\nNOW PRINTING FLOAT ARRAY:    \n");

    float Farray[2];
    float *FloatArrayPointer;
    FloatArrayPointer = Farray;
    float f = 1.45;
    for (   ; FloatArrayPointer < &Farray[2]; FloatArrayPointer++)
    {
        *FloatArrayPointer = f;
        printf("Address: %p Value: %f\n", FloatArrayPointer, *FloatArrayPointer);
    }
    printf("\nDifference between float pointers:\n");
    int **FPtr2 = &FloatArrayPointer;
    printf("%p\n", FPtr2);
    FPtr2++;
    printf("%p\n", FPtr2);


    printf("\n\nNOW PRINTING DOUBLE ARRAY:    \n");

    double Darray[2];
    double *DoubleArrayPointer;
    DoubleArrayPointer = Darray;
    double d = 2.00;
    for (   ; DoubleArrayPointer < &Darray[2]; DoubleArrayPointer++)
    {
        *DoubleArrayPointer = d;
        printf("Address: %p Value: %f\n", DoubleArrayPointer, *DoubleArrayPointer);
    }
    printf("\nDifference between double pointers:\n");
    double **DPtr2 = &DoubleArrayPointer;
    printf("%p\n", DPtr2);
    DPtr2++;
    printf("%p\n", DPtr2);


    //QUESTION 2
    printf("\n\n\nInput an integer:    \n");
    int X;
    scanf("%d", &X);
    Question2(X);

   return 0;
}

int Question2(int N)
{
    int array[32];
    for (int i = 0; i < 32; i++)
    {
        array[i] = N % 2;
        // printf("%d", array[i]);
        N = N/2;
    }
    for (int i = 31; i >= 0; i--)
    {
        printf("%d", array[i]);
    }
    return 0;
}