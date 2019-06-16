%{

#include <stdio.h>
#include <stdlib.h>

extern int yylex();
extern int yyparse();
extern FILE* yyin;

void yyerror(const char* s);
%}

%token T_ADD T_MIN T_MUL T_DIV
%token T_ASSIGN
%token T_EQUAL T_NOT_EQUAL T_GREATER T_SMALLER T_GREATER_OR_EQUAL T_SMALLER_OR_EQUAL
%token T_END T_LEFT_P T_RIGHT_P
%token T_IF T_THEN T_ELSE T_ENDIF T_PRINT T_STRING
%token T_ID T_NUM

%%
/*
IF_DEF:T_IF T_LEFT_P T_ID T_GREATER_OR_EQUAL T_NUM T_RIGHT_P T_THEN  {printf("%s %s %s",$1,$2,$3);}
      |T_PRINT T_ID {printf("%s(\t\"\%lf\\n\", %s);\n}",$1,$2);}
|T_
*/


IF_ST: T_IF T_LEFT_P E T_RIGHT_P T_THEN STATEMENT {printf("if(%s){\n\t%s;\n}",$3,$6);}
     | T_IF T_LEFT_P E T_RIGHT_P T_THEN STATEMENT ELSE_ST {printf("if(%s){\n\t%s;\n%s}",$3,$6,$7);}
  ;

ELSE_ST: IF_ST T_ELSE STATEMENT T_END {printf("else {\n\t");}
       ;

E: T_ID T_EQUAL T_NUM {printf("%s%s%s",$1,$2,$3);}
 |T_ID T_NOT_EQUAL T_NUM {printf("%s%s%s",$1,$2,$3);}
|T_ID T_GREATER_OR_EQUAL T_NUM {printf("%s%s%s",$1,$2,$3);}
|T_ID T_GREATER T_NUM {printf("%s%s%s",$1,$2,$3);}
|T_ID T_SMALLER T_NUM {printf("%s%s%s",$1,$2,$3);}
|T_ID T_SMALLER_OR_EQUAL T_NUM {printf("%s%s%s",$1,$2,$3);}
;

STATEMENT:T_PRINT T_ID T_END {printf("printf(\"\%lf\\n\",%s);",$2);}
	 |T_PRINT T_STRING T_END {printf("printf(\"%s\\n\");",$2);}
;

%%
int yyerror(char const *str)
{
	extern char *yytext;
	fprintf(stderr,"parser error near %s\n",yytext);
	return 0;
}

int main(void)
{
	extern int yyparse(void);
	extern FILE *yyin;

	yyin = stdin;
	if(yyparse()){
		fprintf(stderr,"Error!\n");
		exit(1);
	}
}
