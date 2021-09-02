%{
        int count = 1;
%}

line .*\n

%%

{line}	{ printf("%d %s", count++, yytext); }

%%

main()
{
	extern FILE *yyin;
	yyin=fopen("test.txt","r");
        yylex();

}

int yywrap(){}
