//Recognize strings ending with 00 using lex tool
%option noyywrap
%{
#include<stdio.h>
%}

%%

[0-1]*00 {printf("string accepted");}

[0-9]* {printf("string rejected");}
%%
int main()
{
yylex();
return 0;
}