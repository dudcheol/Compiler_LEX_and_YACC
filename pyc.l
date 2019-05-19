%{
#include <stdio.h>
#include <string.h>
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
\+     { printf("%s (add)\n", yytext); }
\-     { printf("%s (subtract)\n", yytext); }
\*     { printf("%s (multiply)\n", yytext); }
\/     { printf("%s (divide)\n", yytext); }
\=     { printf("%s (assign)\n", yytext); }
\=\=    { printf("%s (equal)\n", yytext); }
\!\=    { printf("%s (not equal)\n", yytext); }
\>     { printf("%s (greater)\n", yytext); }
\<     { printf("%s (smaller)\n", yytext); }
\>\=    { printf("%s (greater or equal)\n", yytext); }
\<\=    { printf("%s (smaller or equal)\n", yytext); }
\;     { printf("%s (command end)\n", yytext); }
\(     { printf("%s (left paren)\n", yytext); }
\)     { printf("%s (right paren)\n", yytext); }
if	{ printf("%s (keyword %s)\n", yytext,yytext); }
then	{ printf("%s (keyword %s)\n", yytext,yytext); }
else	{ printf("%s (keyword %s)\n", yytext,yytext); }
endif	{ printf("%s (keyword %s)\n", yytext,yytext); }
print	{ printf("%s (keyword %s)\n", yytext,yytext); }

(\"([a-zA-Z])*\") { printf("%s (string)\n", yytext); }

[A-Z] {
	search_id(yytext);
	printf("%s (id, %d)\n", yytext, get_val(yytext));
}
[0-9]+ {
	sscanf(yytext,"%d",&i);
	printf("%d (real number)\n",i);
}
[0-9]+\.[0-9]+ {
	sscanf(yytext,"%lf",&r);
	printf("%lf (real number)\n",r);
}


%%

main()
{
	yylex();
	printf("\n");
	printf("--Id table\n");
	for(k=0;k<id_cnt;k++){
                printf("(%s, %d)\n",data[k].id,data[k].val);
        }

}

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



