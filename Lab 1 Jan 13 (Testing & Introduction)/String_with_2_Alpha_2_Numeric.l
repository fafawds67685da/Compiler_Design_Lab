%{
#include<stdio.h>
%}

%%

[A-Z][a-z][0-9][0-9]   { printf("\t %s is a word \n",yytext); }
.          { printf("\t %s is not a word\n",yytext); }

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("\t Input a string \n");
    yylex();
    return 0;
}
