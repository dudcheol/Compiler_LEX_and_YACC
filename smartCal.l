%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "y.tab.h"
#define cnt 26

int i;
int k;
double r;
int id_cnt=0;

struct id_table{
	char id[10];
	int val;
};

struct id_table data[cnt];
void search_id(char[]);
int get_val(char[]);

%}

%%

\n	{ printf("");}
\+     { yylval.str = strdup(yytext); return ADD; }
\-     { yylval.str = strdup(yytext); return MIN; }
\*     { yylval.str = strdup(yytext); return MUL;}
\/     { yylval.str = strdup(yytext); return DIV; }
\=     { 
yylval.str = strdup(yytext);
return ASSIGN; }
\=\=    {yylval.str = strdup(yytext); return EQUAL; }
\!\=    { yylval.str = strdup(yytext); return NOT_EQUAL; }
\>     { yylval.str = strdup(yytext); return GREATER; }
\<     { yylval.str = strdup(yytext); return SMALLER; }
\>\=    { yylval.str = strdup(yytext); return GREATER_OR_EQUAL; }
\<\=    { yylval.str = strdup(yytext); return SMALLER_OR_EQUAL; }
\;     { yylval.str = strdup(yytext); return END; }
\(     { yylval.str = strdup(yytext); return LEFT_P; }
\)     { yylval.str = strdup(yytext); return RIGHT_P; }
if	{ yylval.str = strdup(yytext); return IF; }
then	{ yylval.str = strdup(yytext); return THEN; }
else	{ yylval.str = strdup(yytext); return ELSE;}
endif	{ yylval.str = strdup(yytext); return ENDIF;}
print	{ yylval.str = strdup(yytext); return PRINT; }

(\"([a-zA-Z])*\") { yylval.str = strdup(yytext); return STRING; }

[A-Z]	{
search_id(yytext);
yylval.str = strdup(yytext);
return ID;
}

[0-9]+ {
yylval.str = strdup(yytext);
return NUM;
}
[0-9]+\.[0-9]+ {
yylval.str = strdup(yytext);
return DOUBLE_NUM;
}


%%

void search_id(char id[]){
        for(k=0;k<cnt;k++){
		// 테이블에 이미 입력한 id가 존재하므로
		// 더이상 반복문을 수행할 필요가 없다.
                if(strcmp(data[k].id,id)==0){
			return;
                }
		
		// 테이블에 입력한 id와 일치하는 것이 없으므로 테이블에 추가해줘야 한다.
		// 하지만 테이블에 있는 id가 NULL일 때만  입력한 id를 대입한다.
		// 그렇지않으면 원래 잘 들어있던 테이블에 존재하는 id에 해당하는 val까지 바뀐다.
		// 값을 넣었으면 더이상 반복문을 수행할 필요가 없다.
		if(strcmp(data[k].id,id)!=0&&strcmp(data[k].id,"")==0){
                        strcpy(data[k].id, id);
                        data[k].val=k+1;
			id_cnt++;
                        return;
                }
        }
}


int get_val(char id[]){
        for(k=0;k<id_cnt;k++){
                if(strcmp(data[k].id,id)==0){
                        return data[k].val;
                }
        }
}



