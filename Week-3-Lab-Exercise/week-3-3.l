// Count the number of Lines in given input using lex
%option noyywrap
%{
  int num_lines=0;
%}
%%
\n	++num_lines;
.
%%
main()
{
  yylex();
  printf("No. of Lines = %d",num_lines);
}
