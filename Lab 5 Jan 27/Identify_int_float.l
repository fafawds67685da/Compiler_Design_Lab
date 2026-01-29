%{
#include<stdio.h>
%}

%%

[\-]?[0-9]+  { printf("\t %s is a valid Integer type number \n",yytext); }
[\-]?[0-9]+[\.][0-9]+ { printf("\t %s is a valid Float type number \n",yytext); }
.*          { printf("\t %s is not a valid int or float number\n",yytext); }

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
