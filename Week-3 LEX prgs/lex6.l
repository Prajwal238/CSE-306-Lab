%%

[(][a-zA-Z0-9]*[)]	 { printf("Well Formed paranthesis \n"); }
[(][a-zA-Z0-9]*[^)] { printf("Not a well Formed paranthesis \n"); }
[^(][a-zA-Z0-9]*[)] { printf("Not a well Formed paranthesis \n"); }

%%

main()
{
	yylex();
}
int yywrap()
{
	return 1;	
}
