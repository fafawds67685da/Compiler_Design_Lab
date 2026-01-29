%{
#include<stdio.h>
%}

%%

101[01]*  { printf("\t %s is a valid string \n",yytext); }
.*          { printf("\t %s is not a valid string\n",yytext); }

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
