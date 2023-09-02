%{
#include<stdio.h>
%}

%%
[0-9]+ {printf("%s, is a digit", yytext);}
.+ {printf("it is not a digit");}
%%
int main()
{
printf("\n Enter the digit :");	
yylex();
}
int yywrap()
{
return 1;
}

output:
Microsoft Windows [Version 10.0.19045.3086]
(c) Microsoft Corporation. All rights reserved.

C:\Users\admin>set path=C:\Program Files (x86)\GnuWin32\bin

C:\Users\admin>flex dig.l.txt

C:\Users\admin>set path=C:\MinGW\bin

C:\Users\admin>gcc lex.yy.c

C:\Users\admin>a

 Enter the digit :23
23, is a digit
g65
it is not a digit
