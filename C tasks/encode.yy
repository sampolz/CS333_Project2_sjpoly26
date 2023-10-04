/* 
* takes any character in a-z or A-Z and shifts it 13 spaces forward in the alphabet, 
* with wraparound from z back to a
* 
* Sam Polyakov
* CS333
* encode.yy
*
* TO RUN:
* flex -o encode.yy.c encode.yy
* gcc -o encode encode.yy.c -ll 
* ./encode
* ENTER TEXT
*/

/* definitions for uppcase and lowercase characters */
UPPER [A-Z]
LOWER [a-z]

/* moves character up 13 in the alphabet, accounting for overflow */
%%
{UPPER}     printf("%c", ((yytext[0] - 'A' + 13) % 26) + 'A');
{LOWER}     printf("%c", ((yytext[0] - 'a' + 13) % 26) + 'a');
.           printf("%c", yytext[0]);
%%

int main( int argc, char *argv[] ) {
    yylex(); // a function of flex that read input till it is exhausted
    return 0;
}