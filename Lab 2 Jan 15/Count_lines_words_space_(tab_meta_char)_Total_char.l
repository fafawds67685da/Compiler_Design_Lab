%{
#include<stdio.h>
int line =1, words=0, space=0,tab=0,ch=0;
%}

%%
[\n] {line+=1; ch+=1;}
[" "] {space+=1; ch+=1;}
[a-zA-Z0-9]+ {words+=1; ch+=yyleng;}
[\t] {tab+=1; ch+=1;}
. {ch+=1;}


%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("\t Input a string \n");
    yylex();
    printf("\t Total Number of lines are: %d\n",line);
    printf("\t Total Number of words are: %d\n",words);
    printf("\t Total Number of spaces are: %d\n",space);
    printf("\t Total Number of Tab meta character are: %d\n",tab);
    printf("\t Total Number of Characters are: %d\n",ch);
    return 0;
}
