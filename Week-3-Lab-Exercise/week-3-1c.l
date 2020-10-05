//Count the number of Lines in given input using lex tool
%{ #include<studio.h>
int n_lines=0;
%}

%%
\n {++n_lines;}


%%
int yywrap(void){}
int main(int argc[],char *argv[])
{
 yyin=fopen("myfile.txt", "r"); 
 yylex();
 printf("\n"); 
 printf("Number of lines in the given file: %d",n_lines);
 printf("\n"); 
 return 0;
}