%%
[0-9]*000[0-9]*        { printf("string accepted"); }
[0-9]*                 { printf("string not accepted"); }
.                      { printf("invalid token"); }
%%
main()
{
        yylex();
}
int yywrap()
{
        return 1;
}
