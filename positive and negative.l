%{
int positive_no = 0, negative_no = 0;
%}
%%
^[-][0-9]+ {negative_no++;
printf("negative number = %s\n",yytext);}
[0-9]+ {positive_no++;
printf("positive number = %s\n",yytext);}
%%
int yywrap(){}
int main()
{
yylex();
printf ("number of positive numbers = %d,"
"number of negative numbers = %d\n", positive_no, negative_no);
return 0;
}

Output:
Microsoft Windows [Version 10.0.19042.1526]
(c) Microsoft Corporation. All rights reserved.
C:\Users\ASUS>set path=C:\Program Files (x86)\GnuWin32\bin
C:\Users\ASUS>flex count.l.txt
C:\Users\ASUS>set path=C:\MinGW\bin
C:\Users\ASUS>gcc lex.yy.c
C:\Users\ASUS>a
6
positive number = 6
number of positive numbers = 1,number of negative numbers = 0
C:\Users\ASUS>a
-2
negative number = -2
number of positive numbers = 0,number of negative numbers = 1
