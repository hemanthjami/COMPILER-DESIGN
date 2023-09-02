digit [0-9]
%{
int cons=0;
%}pq;a
%%
{digit}+ { cons++; printf("%s is a constant\n", yytext);  }
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
printf("Number of Constants : %d\n", cons);
fclose(yyin);  
}

output:
C:\Users\admin>set path=C:\Program Files (x86)\GnuWin32\bin
C:\Users\admin>flex constant.l.txt
C:\Users\admin>set path=C:\MinGW\bin
C:\Users\admin>gcc lex.yy.c
C:\Users\admin>a
Enter File Name : sample.c
Number of Constants : 0
C:\Users\admin>sample.c
'sample.c' is not recognized as an internal or external command,
operable program or batch file.
C:\Users\admin>a
Enter File Name : sample.c
43 is constant
43 is a constant
Number of Constants : 1
C:\Users\admin>a
Enter File Name : sample.c
23 is constant
23 is a constant
Number of Constants : 1
