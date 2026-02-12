%{
#include<stdio.h>
FILE *yyin, *yyout1, *yyout2;
%}
%%
[0-9]*[02468] {fprintf(yyout1, "%s", yytext);}
[0-9]*[13579] {fprintf(yyout2,  "%s", yytext);}
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

D:\CD Lab\Lab 7 Feb 05>a input.txt even.txt odd.txt

D:\CD Lab\Lab 7 Feb 05>*/