digit [0-9]*
id [a-zA-Z][a-zA-Z0-9]*
num [0-9]*\[0-9]*
%{
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
int cnt=0,i=0,j=0,s_com=0,com=0;
char st[10][10];
int look_up(char st[10][10],char *id,int n);
%}
%%

\n {s_com=0;}
"//" {printf("\n single line comment\n");s_com=1;}
"/*" {printf("\n comments start\n");com=1;}
"*/" {printf("\n comments end\n");com=0;}

int |
float |
char |
if |
else |
for |
return |
while |
void |
main {if(!com && !s_com) printf("\n %s is keyword",yytext);}
{num} {if(!com && !s_com) printf("\n %s is float",yytext);}
{digit} {if(!com && !s_com) printf("\n %s is digit",yytext);}
{id} {if(!com && !s_com) {
        printf("\n %s is identifier",yytext);
        if(!look_up(st,yytext,i)){
            strcpy(st[i++],yytext);cnt++;
            }
        }
    }
"<=" {if(!com && !s_com) printf("\n %s Relation operator lessthan or equal",yytext);}
"<"  {if(!com && !s_com) printf("\n %s Relation operator lessthan",yytext);}
">=" {if(!com && !s_com) printf("\n %s Relation operator greaterthan or equal",yytext);}
">"  {if(!com && !s_com) printf("\n %s Relation operator greaterthan",yytext);}
"==" {if(!com && !s_com) printf("\n %s Relation operator equal to",yytext);}
"!=" {if(!com && !s_com) printf("\n %s Relation operator not equal to",yytext);}
"="  {if(!com && !s_com) printf("\n %s Assignment operator",yytext);}
%%
main(){
    extern FILE *yyin;
    yyin = fopen("file.txt","r");
    yylex();
    printf("No of id are : %d",cnt);
    printf("\n the contents of symbol table are : \n");
    for(j=0;j<i;j++){
        printf("\n %s",st[j]);
    }
}
int yywrap(){
    return 1;
}
int look_up(char s[10][10],char *id,int n){
    for(j=0;j<n;j++){
        if(!strcmp(st[j],id))
            return 1;
            exit;
    }
    return 0;
}
