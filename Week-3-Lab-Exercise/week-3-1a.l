// Identification of Vowels and Consonants using lex tool
%option noyywrap
%{
#include<stdio.h>
%}

%%
[aeiouAEIOU] {printf("Vowel\n");}
[A-Za-z] {printf("consonants \n");}
%%
int main()
{
printf("Enter a string::");
yylex();
}

