/* 
* Returns the number of chars, rows, and vowels in a file
* 
* Sam Polyakov
* CS333
* counter.yy
*
* TO RUN:
* flex -o counter.yy.c counter.yy
* gcc -o counter counter.yy.c -ll
* ./counter **FILENAME.TXT**     
*/

/* variables to keep track of counts */
    int vowelCount = 0;
    int rowCount = 1;
    int characterCount = 0;

/* definitions for vowel and row */
VOWEL [aeiouAEIOU]
ROW [\n]

/* adds to vowelCount, rowCount, characterCount as each one is recognized */
%%
{VOWEL}   {vowelCount++; characterCount++;}
{ROW}     rowCount++;
.       characterCount++;
%%

int main( int argc, char *argv[] ) {
		
    if (argc > 1)
        yyin = fopen( argv[1], "r" ); //where yylex reads its input 
        
    yylex(); // a function of flex that read input till it is exhausted
    printf("There are %d vowels in the file.\n", vowelCount);
    printf("There are %d rows in the file.\n", rowCount);
    printf("There are %d characters in the file.\n", characterCount);
    return 0;
}