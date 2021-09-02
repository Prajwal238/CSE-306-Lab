%{

	int count = 0;

%}

%%

\n ++count;
.
%%

main()
{

	yylex();
	printf("No.of Lines = %d", count);

}

int yywrap()
{
	return 1;
}
