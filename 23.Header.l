%{
int nmacro, nheader;
%}
%%
^#define { nmacro++; }
^#include { nheader++; }
.|\n { }
%%
int yywrap(void) {
return 1;
}
int main(int argc, char *argv[]) {
yyin = fopen(argv[1], "r");
yylex();
printf("Number of macros defined = %d\n", nmacro);
printf("Number of header files included = %d\n", nheader);
fclose(yyin);
}

OUTPUT:
Microsoft Windows [Version 10.0.19042.1526]
(c) Microsoft Corporation. All rights reserved.
C:\Users\ASUS>set path=C:\Program Files (x86)\GnuWin32\bin
C:\Users\ASUS>flex header.l.txt
C:\Users\ASUS>set path=C:\MinGW\bin
C:\Users\ASUS>gcc lex.yy.c
C:\Users\ASUS>a.exe header.c
Number of macros defined = 1
Number of header files included = 2
