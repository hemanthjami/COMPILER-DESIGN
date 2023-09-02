%{
#undef yywrap
#define yywrap() 1
int f1=0,f2=0;
char oper;
float op1=0,op2=0,ans=0;
void eval();
%}
DIGIT [0-9]
NUM {DIGIT}+(\.{DIGIT}+)?
OP [*/+-]
%%
{NUM} {
if(f1==0)
{
op1=atof(yytext);
f1=1;
}
else if(f2==-1)
{
op2=atof(yytext);
f2=1;
}
if((f1==1) && (f2==1))
{
eval();
f1=0;
f2=0;
}
}
{OP} {
oper=(char) *yytext;
f2=-1;
}
[\n] {
if(f1==1 && f2==1)
{
eval;
f1=0;
f2=0;
}
}
%%
int main()
{
yylex();
}
void eval()
{
switch(oper)
{
case '+':
ans=op1+op2;
break;
case '-':
ans=op1-op2;
break;
case '*':
ans=op1*op2;
break;
case '/':
if(op2==0)
{
printf("ERROR");
return;
}
else
{
ans=op1/op2;
}
break;
default:
printf("operation not available");
break;
}
printf("The answer is = %lf",ans);
}

OUTPUT:
Microsoft Windows [Version 10.0.19042.1526]
(c) Microsoft Corporation. All rights reserved.
C:\Users\ASUS>set path=C:\Program Files (x86)\GnuWin32\bin
C:\Users\ASUS>flex operation.l.txt
C:\Users\ASUS>set path=C:\MinGW\bin
C:\Users\ASUS>gcc lex.yy.c
C:\Users\ASUS>a
20+30
The answer is = 50.000000
25*5
The answer is = 125.000000
