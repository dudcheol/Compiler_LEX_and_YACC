%{
#include <stdio.h>
#include <stdlib.h>
%}

%token ADD MIN MUL DIV
%token ASSIGN EQUAL NOT_EQUAL GREATER SMALLER GREATER_OR_EQUAL SMALLER_OR_EQUAL
%token END LEFT_P RIGHT_P IF THEN ELSE ENDIF PRINT STRING
%token ID NUM

%%
ASS: ID ASSIGN NUM ADD NUM END {printf("%s = %s + %s;",$1,$3,$5);}
/*     | ID ASSIGN ID OP NUM END {printf("%s = %s %s;",$1,$3,$5);}
|ID ASSIGN NUM END {printf("%s = %s %s;",$1,$3);}
|ID ASSIGN NUM OP NUM END {printf("%s = %s %s;",$1,$3,$5);}
*/
;
/*
OP: ADD {printf("+");}
  |MIN {printf("-");}
|MUL {printf("*");}
|DIV {printf("/");}
;
*/

%%
#include "lex.yy.c"

int main(void)
{
  printf("START PARSE!!\n");
  yyparse();
}
