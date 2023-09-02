%{
int com=0;
%}
%s COMMENT
%%
"/*" {BEGIN COMMENT;}
<COMMENT>"*/" {BEGIN 0; com++;}
<COMMENT>\n {com++;}
<COMMENT>. {;}
\/\/.* {; com++;}
.|\n {fprintf(yyout,"%s",yytext);}
%%
void main(int argc, char *argv[])
{
if(argc!=3)
{
printf("usage : a.exe input.c output.c\n");
exit(0);
}
yyin=fopen(argv[1],"r");
yyout=fopen(argv[2],"w");
yylex();
printf("\n number of comments are = %d\n",com);
}
int yywrap()
{
return 1;
}

OUTPUT:
Microsoft Windows [Version 10.0.19042.1526]
(c) Microsoft Corporation. All rights reserved.
C:\Users\ASUS>set path=C:\Program Files (x86)\GnuWin32\bin
C:\Users\ASUS>flex comment.l.txt
C:\Users\ASUS>set path=C:\MinGW\bin
C:\Users\ASUS>gcc lex.yy.c
C:\Users\ASUS>a.exe input.c
usage : a.exe input.c output.c
C:\Users\ASUS>a.exe input.c output.c
number of comments are = 2
