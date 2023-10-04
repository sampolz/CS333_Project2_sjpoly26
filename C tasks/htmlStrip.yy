/* 
* takes any character in a-z or A-Z and shifts it 13 spaces forward in the alphabet, 
* with wraparound from z back to a
* 
* Sam Polyakov
* CS333
* htmlStrip.yy
*
* TO RUN:
* flex -o htmlStrip.yy.c htmlStrip.yy
* gcc -o htmlStrip htmlStrip.yy.c -ll
* ./htmlStrip **filename.txt**     
* OR ENTER TEXT
*/

/* definitions to be */
TAG <[^<>]+>
DOUBLESPACE \n\n
TAB \t

/* Strips anything inside an HTML tag */
%%
{TAG}    { /* Remove content inside tags */ }
{DOUBLESPACE}    {/* Remove double spaces */}
{TAB}    {/* Remove tabs */}
.|\n     { printf("%c", yytext[0]); }
%%

int main(int argc, char *argv[]) {
    if (argc > 1) {
        yyin = fopen(argv[1], "r"); // Where yylex reads its input
        if (yyin == NULL) {
            fprintf(stderr, "Could not open file: %s\n", argv[1]);
            return 1;
        }
    }

    yylex(); // A function of Flex that reads input until it is exhausted

    if (yyin != NULL) {
        fclose(yyin);
    }

    return 0;
}