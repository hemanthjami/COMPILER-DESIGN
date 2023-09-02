%{
int nchar, nword, nline;
%}
%%
\n { nline++; nchar++; }
[^ \t\n]+ { nword++, nchar += yyleng; }
. { nchar++; }
%%
int yywrap(void) {
return 1;
}
int main(int argc, char *argv[]) {
yyin = fopen(argv[1], "r");
yylex();
printf("Number of characters = %d\n", nchar);
printf("Number of words = %d\n", nword);
printf("Number of lines = %d\n", nline);
fclose(yyin);
}

OUTPUT:
Microsoft Windows [Version 10.0.19042.1526]
(c) Microsoft Corporation. All rights reserved.
C:\Users\ASUS>set path=C:\Program Files (x86)\GnuWin32\bin
C:\Users\ASUS>flex counts.l.txt
C:\Users\ASUS>set path=C:\MinGW\bin
C:\Users\ASUS>gcc lex.yy.c
C:\Users\ASUS>a.exe count.c
Number of characters = 210
Number of words = 33
Number of lines = 9
