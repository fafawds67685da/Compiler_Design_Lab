%{
#include<stdio.h>
%}
%%
[ \t]+ {fprintf(yyout, " ");}
. {fprintf(yyout, "%s", yytext);}
%%
int yywrap()
{
    return 1;
}
int main(int agrc, char *argv[])
{
    extern FILE *yyin, *yyout;
    yyin  = fopen(argv[1], "r");
    yyout = fopen(argv[2], "w");
    yylex();
    return 0;
}

/*D:\CD Lab\Lab 7 Feb 05>lex replace.l

D:\CD Lab\Lab 7 Feb 05>gcc lex.yy.c

D:\CD Lab\Lab 7 Feb 05>a input.txt output.txt

D:\CD Lab\Lab 7 Feb 05>*/