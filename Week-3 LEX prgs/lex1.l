%%
[aeiousAEIOU] { printf("%s is vowel \n",yytext); }
[a-zA-Z]      { printf("%s is consonant \n",yytext); }
.             { printf("%s is invalid token \n",yytext); }

%%
main()
{

	yylex();

}
int yywrap()
{

	return 1;

}
