%{
#include<stdio.h>
%}
op "+"|"-"|"*"|"/"|"++"|"--"|"<="|">="|"="
sep ";"|","|"{"|"}"|"("|")"
key "int"|"float"|"while"|"if"|"else"
%%

{key} {printf("\t %s is a valid KEYWORD \n",yytext);}
{op} {printf("\t %s is a valid OPERATOR \n",yytext);}
{sep} {printf("\t %s is a valid SEPERATOR \n",yytext);}
[_A-Za-z][A-Za-z0-9_]* {printf("\t %s is a valid IDENTIFIER \n",yytext);}
[0-9]+(\.[0-9]+)? {printf("\t %s is a valid LITERAL \n",yytext);}
[ \t\n]+        ;   /* Ignore whitespace */

.               { printf("%s : INVALID TOKEN\n", yytext); }

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


/* 
Other ways without macros:-

(int|char|float|for|while) {printf("\nInvalid");}
"int"|"float"|"char"|"for"|"while" {printf("\nInvalid");}
*/