#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    printf("Hello world!\n");

    //QUESTION 1
    Q1();

    //QUESTION 2
    char str1[50] = "String1";
    char str2[50] = "String2";
    Q2(str1, str2);

    //QUESTION 3
    Q3();

    //QUESTION 4
    Q4();

    //QUESTION 5
    Q5();

    return 0;
}

int Q1()
{
    char str[50], erp[50];
    printf("Enter your name:");
    scanf("%s", &str);
    printf("Enter your ERP:");
    scanf("%s", &erp);
    printf("Your Name Is: %s \n Your ERP is: %s", str, erp);
    return 0;
}

int Q2 (char A[], char B[])
{
    printf("\n\nLength of string %s: %d", A, strlen(A));
    printf("\nLength of string %s: %d", B, strlen(B));

    printf("\n\nReverse of string %s: %s", A, strrev(A));
    printf("\nReverse of string %s: %s", B, strrev(B));

    printf("\n\nComparison of string %s with %s: %d", A, B, strcmp(A,B));
    if (strcmp(A,B) == 0)
    {
        printf("\nString %s is equal to string %s", A, B);
    }
    else if (strcmp(A, B) < 0)
    {
        printf("\nString %s is less than string %s", A, B);
    }
    else if (strcmp(A, B) > 0)
    {
        printf("\nString %s is greater than string %s", A, B);
    }

    printf("\n\nConcatenating string %s to string %s: ", B, A);
    printf("%s", strcat(A, B));
    return 0;
}

int Q3()
{
    printf("\n\nEnter 5 integer values: ");
    int N[5];
    int Sum = 0, Smallest, Largest;
    for (int i = 0; i < 5; i++)
    {
        scanf("%d", &N[i]);
        if (i == 0)
        {
            Smallest = N[i];
            Largest = N[i];
        }
        else
        {
            if (N[i] < Smallest)
                Smallest = N[i];
            if (N[i] > Largest)
                Largest = N[i];
        }
        Sum = Sum + N[i];
    }
    printf("\nArray entries:");
    for (int i = 0; i < 5; i++)
    {
        printf(" %d ", N[i]);
    }
    printf("\nSum of Integers: %d ", Sum);
    if (Sum % 2 == 0)
    {
        printf("(Sum is Even)");
    }
    else
    {
        printf("(Sum is Odd)");
    }
    printf("\nSmallest Integer: %d", Smallest);
    printf("\nLargest Integer: %d", Largest);
    return 0;
}

int Q4()
{
    int Num[10];

    printf("\n\nEnter 10 integer values: ");
    for (int i = 0; i < 10; i++)
    {
        scanf("%d", &Num[i]);
    }

    int Most = Num[0];
    int MostOccurences = 0;
    int Occurences = 0;

    for (int i = 0; i < 10; i++)
    {
        for (int x = 0; x < 10; x++)
        {
            if (Num[x] == Num[i])
            {
                Occurences++;
            }
        }
        if (Occurences > MostOccurences)
        {
            Most = Num[i];
            MostOccurences = Occurences;
        }
        Occurences = 0;
    }
    printf("\n%d has most occurrences", Most);
    return 0;
}

int Q5()
{
    printf("\n\n");
    for (int i = 0; i < 6; i++)
    {
        for (int n = 0; n < 6; n++)
        {
            if (n < 5 - i)
                printf(" . ");
            else
                printf(" * ");
        }
        printf("\n");
    }
    return 0;
}
