%{
%}

%%
((http)|(ftp))s?:\/\/[a-zA-Z0-9]{2}(\.[a-z]{2})+(\/[a-zA-Z0-9+=?]) {printf("\nURL InValid\n");}
.+ {printf("\nURL valid\n");}

%%
int yywrap(){}

void main()
{
	printf("\nEnter URL : ");
	yylex();
	printf("\n");
}

output:
Microsoft Windows [Version 10.0.19045.3086]
(c) Microsoft Corporation. All rights reserved.
C:\Users\admin>set path=C:\Program Files (x86)\GnuWin32\bin
C:\Users\admin>flex url.l.txt
C:\Users\admin>set path=C:\MinGW\bin
C:\Users\admin>gcc lex.yy.c
C:\Users\admin>a
Enter URL : https;||unml
URL valid
