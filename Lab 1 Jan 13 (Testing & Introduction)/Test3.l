%{
#include<stdio.h>
%}

%%

[a-z A-Z]+   { printf("\t %s is a word \n",yytext); }
.*          { printf("\t %s is not a word\n",yytext); }

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
