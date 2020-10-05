//  Recognize strings ending with 00 using lex
%option noyywrap
%%
[0-9]*00	printf("String Accepted\n");
[0-9]*		printf("String Rejected\n");
.*		printf("Invalid String\n");
%%
main()
{ 
	yylex();
}
