%{
#include<stdio.h>
%}
%%
[A-Z]+[\t\n] {printf("%s", yytext);}
.;
%%
int yywrap(){}
int main()
{
printf("enter the input string:\n");
yylex();
}

OUTPUT:
Microsoft Windows [Version 10.0.19042.1526]
(c) Microsoft Corporation. All rights reserved.
C:\Users\ASUS>set path=C:\Program Files (x86)\GnuWin32\bin
C:\Users\ASUS>flex words.l.txt
C:\Users\ASUS>set path=C:\MinGW\bin
C:\Users\ASUS>gcc lex.yy.c
C:\Users\ASUS>a
enter the input string:
USHA
USHA
