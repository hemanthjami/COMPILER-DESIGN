%{
int tags;
%}
%%
"<"[^>]*> { tags++; printf("%s \n", yytext); }
.|\n { }
%%
int yywrap(void) {
return 1; }
int main(void)
{
FILE *f;
char file[10];
printf("Enter File Name : ");
scanf("%s",file);
f = fopen(file,"r");
yyin = f;
yylex();
printf("\n Number of html tags: %d",tags);
fclose(yyin);
}

OUTPUT:
Microsoft Windows [Version 10.0.19042.1526]
(c) Microsoft Corporation. All rights reserved.
C:\Users\ASUS>set path=C:\Program Files (x86)\GnuWin32\bin
C:\Users\ASUS>flex html.l.txt
C:\Users\ASUS>set path=C:\MinGW\bin
C:\Users\ASUS>gcc lex.yy.c
C:\Users\ASUS>a
Enter File Name : sample.html
<html>
<html>
<body>
<body>
Number of html tags: 2
C:\Users\ASUS>a
Enter File Name : sample.html
<html> <body> <h1> </h1> <p> </p> </body> </html>
<html>
<body>
<h1>
</h1>
<p>
</p>
</body>
</html>
Number of html tags: 8
