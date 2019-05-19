%{
#include <stdio.h>
#include "y.tab.h"

int
yywrap(void)
{
    return 1;
}
%}
%%
"+"	return ADD;
"-"	return SUB;
"*"	return MUL;
"/"	return DIV;
"\n"	return CR;
"="	return ASSIGN;
"=="	return EQUAL;
"!="	return NOT_EQUAL;
">"	return GREATER;
"<"	return SMALLER;
"=>"	return GREATER_OR_EQUAL;
"<="	return SMALLER_OR_EQUAL;
";"	return COMMAND_END;
"("	return LEFT_PAREN;
")"	return RIGHT_PAREN;

[1-9][0-9]* {
    double temp;
    sscanf(yytext, "%lf", &temp);
    yylval.double_value = temp;
    return DOUBLE_LITERAL;
}
[0-9]*\.[0-9]* {
    double temp;
    sscanf(yytext, "%lf", &temp);
    yylval.double_value = temp;
     return DOUBLE_LITERAL;
}
[A-Z]+ {
    
}
%%
