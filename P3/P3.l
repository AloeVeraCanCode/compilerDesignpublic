%{
#include <stdio.h>
int count=0;
%}

%%
\n  ;
[aeiouAEIOU][a-zA-Z0-9]*	count++;
[a-zA-Z0-9]*     ;	
%%

int yywrap(void){}

int main()
{
	yyin=fopen("sample.txt","r");
	yylex();
	printf("Number of words starting with vowels: %d\n", count);
	return 0;
}
