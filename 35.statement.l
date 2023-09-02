%%
[\t ]+ ;
[0-9]+|[0-9]*\.[0-9]+ { printf("\n%s is NUMBER", yytext);}
#.* { printf("\n%s is COMMENT", yytext);}
[a-zA-Z]+ { printf("\n%s is WORD", yytext);}
\n { ECHO;}
%%
int main()
{
while( yylex());
}
int yywrap( )
{
return 1;
}

OUTPUT:
Microsoft Windows [Version 10.0.19042.1526]
(c) Microsoft Corporation. All rights reserved.
C:\Users\ASUS>set path=C:\Program Files (x86)\GnuWin32\bin
C:\Users\ASUS>flex statement.l.txt
C:\Users\ASUS>set path=C:\MinGW\bin
C:\Users\ASUS>gcc lex.yy.c
C:\Users\ASUS>a
variables A and B contains 10 and 20 respectively
variables is WORD
A is WORD
and is WORD
B is WORD
contains is WORD
10 is NUMBER
and is WORD
20 is NUMBER
respectively is WORD
