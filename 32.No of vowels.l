%{
int vow_count=0;
int const_count =0;
%}
%%
[aeiouAEIOU] {vow_count++;}
[a-zA-Z] {const_count++;}
%%
int yywrap(){}
int main()
{
printf("Enter the string of vowels and consonants:");
yylex();
printf("Number of vowels are: %d\n", vow_count);
printf("Number of consonants are: %d\n", const_count);
return 0;
}

OUTPUT:
Microsoft Windows [Version 10.0.19042.1526]
(c) Microsoft Corporation. All rights reserved.
C:\Users\ASUS>set path=C:\Program Files (x86)\GnuWin32\bin
C:\Users\ASUS>flex lex.l.txt
C:\Users\ASUS>set path=C:\MinGW\bin
C:\Users\ASUS>gcc lex.yy.c
C:\Users\ASUS>a
Enter the string of vowels and consonants:vowel sound allow the air to flow freely
Number of vowels are: 13
Number of consonants are: 20
