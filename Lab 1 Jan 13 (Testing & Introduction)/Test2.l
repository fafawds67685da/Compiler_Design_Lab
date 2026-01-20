%{
#include<stdio.h>
%}

%%

[a-z A-Z]+   { printf("\t %s is a word \n",yytext); }
.*          { printf("Invalid\n"); }

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
