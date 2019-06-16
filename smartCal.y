%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define cnt 26

extern char * yytext;

struct id_list{
        char id[10];
};
struct id_list dat[cnt];

char id[10];
int i=0;
int k=0;
%}

%token <str> ADD MIN MUL DIV
%token <str> ASSIGN EQUAL NOT_EQUAL GREATER SMALLER GREATER_OR_EQUAL SMALLER_OR_EQUAL
%token <str> END LEFT_P RIGHT_P IF THEN ELSE ENDIF PRINT STRING
%token <str> ID NUM DOUBLE_NUM

%union {
char * str;
}

%type<str> op number id id2 cop

%%
start: statement
|start statement '\n' 
|start statement
|start error '\n' {yyerrok; printf("--> try again \n");}
|start if_else_st
;

statement:id ASSIGN number END
	 {printf("\t%s%s%s;\n",$1,$2,$3);}
|id ASSIGN number op number END
{printf("\t%s%s%s%s%s;\n",$1,$2,$3,$4,$5);}
|id ASSIGN id2 op number END
{printf("\t%s%s%s%s%s;\n",$1,$2,$3,$4,$5);}
;

op:ADD {$$=$1;}
|MIN {$$=$1;}
|MUL {$$=$1;}
|DIV {$$=$1;}
;

number:NUM {$$=$1;}
      |DOUBLE_NUM {$$=$1;}
;

id:ID
{
	$$=$1;
	for(k=0;k<26;k++){
                // 테이블에 이미 입력한 id가 존재하므로
                // 더이상 반복문을 수행할 필요가 없다.
                if(strcmp(dat[k].id,$1)==0){
                        break;
                }

                // 테이블에 입력한 id와 일치하는 것이 없으므로 테이블에 추가해줘야 한다.
                // 하지만 테이블에 있는 id가 NULL일 때만  입력한 id를 대입한다.
                // 그렇지않으면 원래 잘 들어있던 테이블에 존재하는 id에 해당하는 val까지 바뀐다.
                // 값을 넣었으면 더이상 반복문을 수행할 필요가 없다.
                if(strcmp(dat[k].id,$1)!=0&&strcmp(dat[k].id,"")==0){
                       strcpy(dat[k].id, $1);
                       printf("\tdouble %s;\n",dat[k].id);
                       break;
                }
        }
}
;

id2:ID
   ;

if_else_st:if_st ENDIF END {printf("\t}\n");}
|if_st else_st ENDIF END {printf("\t}\n");}
;


if_st:IF LEFT_P ID cop NUM RIGHT_P THEN PRINT ID END
{
printf("\tif(%s%s%s) {\n\t\tprintf(\"%%lf\\n\",%s);\n",$3,$4,$5,$9);
}
|IF LEFT_P ID cop NUM RIGHT_P THEN PRINT STRING END
{
Eliminate($9,'\"');
printf("\tif(%s%s%s) {\n\t\tprintf(\"%s\\n\");\n",$3,$4,$5,$9);
}
|if_st loop_st
;

else_st:ELSE PRINT STRING END
{
printf("\t}\n");
Eliminate($3,'\"');
printf("\telse {\n\t\tprintf(\"%s\\n\");\n",$3);}
|ELSE PRINT ID END
{
printf("\t}\n");
printf("\telse {\n\t\tprintf(\"%%lf\\n\",%s);\n",$3);}
|else_st loop_st
;

loop_st: PRINT STRING END
{
Eliminate($2,'\"');
printf("\t\tprintf(\"%s\\n\");\n",$2);}
|PRINT ID END
{
printf("\t\tprintf(\"%%lf\\n\",%s);\n",$2);}
;

cop:EQUAL {$$=$1;}
|NOT_EQUAL {$$=$1;}
|GREATER {$$=$1;}
|SMALLER {$$=$1;}
|GREATER_OR_EQUAL {$$=$1;}
|SMALLER_OR_EQUAL {$$=$1;}
;

%%
#include "lex.yy.c"
yyerror(s)
char *s;
{
	printf("%s\n",s);
}
main()
{
	printf("#include <stdio.h>\n\nint main()\n{\n");
	yyparse();
	printf("\n\treturn 0;\n}\n");
}

void Eliminate(char *str, char ch)
{
    for (; *str != '\0'; str++)//종료 문자를 만날 때까지 반복
    {
        if (*str == ch)//ch와 같은 문자일 때
        {
            strcpy(str, str + 1);
            str--;
        }
    }
}
