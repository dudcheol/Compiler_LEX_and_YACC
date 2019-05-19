%option noyywrap
/* First the standard includes  */

%{

#include <stdio.h>

%}

/* Then the name definitions */

letter 		[a-zA-Z]
identifier 	{letter}+

/* Now the rules  */
%%

{identifier}    { printf("%s\n", yytext); }	/* Simply print the identifiers */
.|\n			;                     	/* Ignore everything else  */

%%

/* And the helper routines */

int main ( )
{
   yylex ( );
   return 0;
}
 

