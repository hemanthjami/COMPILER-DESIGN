#include<stdio.h>
#include<conio.h>
int main()
{
	char com[30];
	int i=2,a=0;
	printf("\n enter comment:");
	gets(com);
	if(com[0]=='/')
	{
		if(com[1]=='/')
		{
			printf("\n it is a comment");
		}
		else if(com[1]=='*')
		{
			for(i=2;i<=30;i++)
			{
				if(com[i]=='*'&&com[i+1]=='/')
				{
					printf("\n it is a comment");
					a=1;
					break;
				}
				else
				{
					continue;
				}
			}
			if(a==0)
			{
				printf("\n it is not a comment");
			}
		}
		else
		{
			printf("\n it is not a comment");
		}
	}
	else
	{
		printf("\n it is not a comment");
	}
}

OUTPUT:
 enter comment://hello

 it is a comment
--------------------------------
Process exited after 7.422 seconds with return value 17
Press any key to continue . . .
enter comment:hello

 it is not a comment
--------------------------------
Process exited after 8.601 seconds with return value 21
Press any key to continue . . .
