%{
#include <stdlib.h>
#include "calc.tab.h"
extern int yylval;
%}
%%
[0-9]+ {yylval = atoi(yytext); return NUMBER;}
[ \t] ;
“$” {return 0; /* end of input */ }
\n |
. {return(yytext[0]); }
