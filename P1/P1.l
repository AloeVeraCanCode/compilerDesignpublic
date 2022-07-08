%{
    #include<stdio.h>
    int lines = 0, words = 0, chars = 0;
%}

%%
\n          {lines++;words++;}
[ \t ' ']+   {words++; }
[a-zA-Z]    {chars++;}
[0-9]        {chars++;}
%%

int yywrap(void){}

int main()
{
    yyin=fopen("sample.txt","r");
    yylex();
    printf("Number of lines: %d\n", lines);
    printf("Number of words: %d\n", words);
    printf("Number of characters: %d\n", chars);
    return 0;
}