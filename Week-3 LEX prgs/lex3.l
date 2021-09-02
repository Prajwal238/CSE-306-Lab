%{
	int count = 0;
%}

%%

[aeiouAEIOU] ++count;
.
%%
main()
{
	yylex();
	printf("No.of vowels = %d \n",count);
}
int yywrap()
{
	return 1;
}
