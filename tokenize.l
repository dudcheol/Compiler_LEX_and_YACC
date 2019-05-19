%{
int i;
double r;
string ADD,SUB,MUL,DIV,CR,ASSIGN,EQUAL,NOT_EQAUL,GREATER,SMALLER,GREATER_OR_EQUAL,SMALLER_OR_EQUAL,COMMAND_END,LEFT_PAREN,RIGHT_PAREN;
%}

%%

"+"     {printf("%s (add)\n",yytext}
"-"     return SUB;
"*"     return MUL;
"/"     return DIV;
"\n"    return CR;
"="     return ASSIGN;
"=="    return EQUAL;
"!="    return NOT_EQUAL;
">"     return GREATER;
"<"     return SMALLER;
"=>"    return GREATER_OR_EQUAL;
"<="    return SMALLER_OR_EQUAL;
";"     return COMMAND_END;
"("     return LEFT_PAREN;
")"     return RIGHT_PAREN;


[0-9]+ {
	sscanf(yytext,"%d",&i);
	printf("%d (real number)",i);
}
[0-9]+\.[0-9]+ {
	sscanf(yytext,"%lf",&r);
	printf("%lf (real number)",r);
}

%%

main()
{
	yylex();
}
