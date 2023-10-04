/* 
* A simple clite parser
* 
* Sam Polyakov
* CS333
* parser.yy
*
* TO RUN:
* flex -o parser.yy.c parser.yy
* gcc -o parser parser.yy.c -ll 
* ./parser  **FILENAME.txt**
*/


DIGIT [0-9]
LETTER [a-zA-Z]
WHITESPACE [ \t\n]

%%
{DIGIT}+"."{DIGIT}*  {printf("Float-%s\n", yytext);}
{DIGIT}*   {printf("Integer-%s\n", yytext);}
if|else|while|for|int|float     {printf("Keyword-%s\n", yytext);}
= {printf("Assignment\n");}
== | < | > | <= | >=      {printf("Comparison-%s\n", yytext);}
\+ | \- | \* | \/       {printf("Operator-%s\n", yytext);}
\{     {printf("Open-bracket\n");}
\}     {printf("Close-bracket\n");}
\(     {printf("Open-paren\n");}
\)     {printf("Close-paren\n");}
[a-zA-Z]+ printf("Identifier- %s\n", yytext);
{WHITESPACE} {/* remove whitespave */}
. {/* remove all other chars */}
%%


int main ( int argc, char *argv[]) {

    if (argc>1) {
        yyin = fopen( argv[1], "r");
    }

    yylex();
}