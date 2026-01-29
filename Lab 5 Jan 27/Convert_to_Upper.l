%{
#include<stdio.h>
%}

%%

[A-Z]+  { printf("\t %s\n is not a valid name \n",yytext); }
.      { printf("\t %s\n is a valid name\n",yytext); }

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("\t Input a string \n");
    yylex();
    printf("\t Resultant string is: %s \n",yytext);
    return 0;
}
