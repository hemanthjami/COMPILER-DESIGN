%{
%}
%%
[0-9][0-9]{9} {printf("\n mobile number valid\n");}
.+ {printf("\n mobile number invalid\n");}
%%
int yywrap(void){}
int main()
{
printf("\n enter the mobile number:");
yylex();
printf("\n");
return 0;
}

OUTPUT:
Microsoft Windows [Version 10.0.19042.1526]
(c) Microsoft Corporation. All rights reserved.
C:\Users\ASUS>set path=C:\Program Files (x86)\GnuWin32\bin
C:\Users\ASUS>flex mobile.l.txt
C:\Users\ASUS>set path=C:\MinGW\bin
C:\Users\ASUS>gcc lex.yy.c
C:\Users\ASUS>a
enter the mobile number:8008494900
mobile number valid
C:\Users\ASUS>a
enter the mobile number:67892923ee22
mobile number invalid
