%{
#include<stdio.h>
%}

%%

[A-Z][A-Z][A-Za-z0-9]*   { printf("\t %s is a word \n",yytext); }
.*          { printf("\t %s is not a word\n",yytext); }

%%

int yywrap()
{
    return 1;
}

int main(int args, char* argv[])
{
    extern FILE* yyin;
    yyin = fopen(argv[1],"r");
    yylex();
    return 0;
}
