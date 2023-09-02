%{
#include<stdio.h>
%}
%%
[a-zA-Z0-9_]+(@[a-z]+)(.[a-z]+) {printf("%s is a valid email", yytext);}
.* {printf("It is not a valid email");}
%%
int main()
{
printf("\n Enter the email:");	
yylex();
}
int yywrap()
{
return 1;
}

OUTPUT:
Microsoft Windows [Version 10.0.19042.1526]
(c) Microsoft Corporation. All rights reserved.
C:\Users\ASUS>set path=C:\Program Files (x86)\GnuWin32\bin
C:\Users\ASUS>flex mail.l.txt
C:\Users\ASUS>set path=C:\MinGW\bin
C:\Users\ASUS>gcc lex.yy.c
C:\Users\ASUS>a
Enter the email:beriushanandhini@gmail.com
beriushanandhini@gmail.com is a valid email
