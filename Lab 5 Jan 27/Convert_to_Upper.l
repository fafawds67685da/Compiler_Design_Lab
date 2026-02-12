%{
#include<stdio.h>
#include <string.h>
%}

%%

[a-z]+[A-Z]*  {
    { printf("\t %s\n is a valid lowercase string\n",yytext); }
    char snew[100];
    int i = 0;
    while(yytext[i] != '\0')
    {
        if(yytext[i]>=97 && yytext[i]<=122){
        snew[i] = yytext[i] - 32;   /* a → A */
        }
        i++;
    }
    snew[i] = '\0';

    printf("Converted string : %s\n", snew);

}
[A-Za-z]+ {
    printf("%s is NOT a lowercase string\n", yytext);}

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("\t Input a string \n");
    yylex();pp
    return 0;
}
