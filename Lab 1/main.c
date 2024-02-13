#include <stdio.h>
#include <stdlib.h>

int main()
{
    //QUESTION 1
    printf("Ashnah Khalid Khan\n");
    printf("22889\n\n");


    //QUESTION 2
    int A, B, C, D, E;
    printf("Enter number 1:");
    scanf("%d", &A);
    printf("\n");
    printf("Enter number 2:");
    scanf("%d", &B);
    printf("\n");
    C = A + B;
    printf("%d", C);
    printf("\n");
    printf("%d + %d = %d", A, B, C);
    printf("\n");
    D = B - A;
    printf("%d - %d = %d", B, A, D);
    printf("\n");
    E = A*B;
    printf("%d * %d = %d", A, B, E);
    printf("\n\n");


    //QUESTION 3
    int N1, N2, Remainder;
    printf("Enter number 1:");
    scanf("%d", &N1);
    printf("\n");
    printf("Enter number 2:");
    scanf("%d", &N2);
    printf("\n");
    printf("%d + %d = %d", N1, N2, N1+N2);
    printf("\n");
    Remainder = (N1 + N2) % 2;
    if (Remainder == 0)
    {
        printf("Sum is even");
    }
    else
    {
        printf("Sum is odd");
    }
    printf("\n\n");


    //QUESTION 4
    int a, b, c;
    printf("Enter number 1:");
    scanf("%d", &a);
    printf("\n");
    printf("Enter number 2:");
    scanf("%d", &b);
    printf("\n");
    printf("Enter number 3:");
    scanf("%d", &c);
    printf("\n");
    if (a >= b && a >= c)
    {
        if (b >= c)
        {
            printf("Descending order: %d , %d, %d", a, b, c);
            printf("\n");
            printf("Ascending order: %d , %d, %d", c, b, a);
        }
        else
        {
            printf("Descending order: %d , %d, %d", a, c, b);
            printf("\n");
            printf("Ascending order: %d , %d, %d", b, c, a);
        }
    }
    else if (b >= a && b >= c)
    {
        if (a >= c)
        {
            printf("Descending order: %d , %d, %d", b, a, c);
            printf("\n");
            printf("Ascending order: %d , %d, %d", c, a, b);
        }
        else
        {
            printf("Descending order: %d , %d, %d", b, c, a);
            printf("\n");
            printf("Ascending order: %d , %d, %d", a, c, b);
        }
    }
    else if (c >= a && c >= a)
    {
        if (a >= b)
        {
            printf("Descending order: %d , %d, %d", c, a, b);
            printf("\n");
            printf("Ascending order: %d , %d, %d", b, a, c);
        }
        else
        {
            printf("Descending order: %d , %d, %d", c, b, a);
            printf("\n");
            printf("Ascending order: %d , %d, %d", a, b, a);
        }
    }
    printf("\n\n");


    //QUESTION 5
    int T;
    printf("Enter a number:");
    scanf("%d", &T);
    printf("\n");
    for(int i = 1; i <= 10; ++i)
    {
        printf("%d * %d = %d", T, i, T*i);
        printf("\n");
    }
    printf("\n\n");


    //QUESTION 6
    for(int i = 0; i < 6; i++)
    {
        for(int n = 0; n < i; n++)
        {
            printf(" * ");
        }
        for(int w = 0; w < 6 - i; w++)
        {
            printf(" . ");
        }
        printf("\n");
    }

    return 0;
}
