%{
#include<stdio.h>
FILE *yyin, *yyout1, *yyout2;
%}
%%
[0-9]+ {
    int num = atoi(yytext);
    int i, z = 0;

    if (num <= 1)
        z = 0;
    else {
        for (i = 2; i <= num/2; i++) {
            if (num % i == 0) {
                z = 1;
                break;
            }
        }
    }

    if (z == 0)
        fprintf(yyout1, "%d ", num);   // prime
    else
        fprintf(yyout2, "%d ", num);   // not prime
}
.*{continue;}
%%
int yywrap()
{
    return 1;
}
int main(int agrc, char *argv[])
{
    extern FILE *yyin, *yyout1, *yyout2;
    yyin  = fopen(argv[1], "r");
    yyout1 = fopen(argv[2], "w");
    yyout2 = fopen(argv[3], "w");
    yylex();
    return 0;
}

/*D:\CD Lab\Lab 7 Feb 05>lex replace.l

D:\CD Lab\Lab 7 Feb 05>gcc lex.yy.c

D:\CD Lab\Lab 7 Feb 05>a input.txt prime.txt non_prime.txt

D:\CD Lab\Lab 7 Feb 05>*/