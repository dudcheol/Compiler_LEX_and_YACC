%{
#include <stdio.h>
#include <string.h>
int i;
int k;
int cnt=26;
double r;
struct id_table{
	char id;
	int val;
};
struct id_table *data[26];
%}

%%

"+"     { printf("%s (add)\n", yytext); }
"-"     { printf("%s (subtract)\n", yytext); }
"*"     { printf("%s (multiply)\n", yytext); }
"/"     { printf("%s (divide)\n", yytext); }
"="     { 
for(k=0;k<cnt;k++){
	if(strcmp(data[k]->id,yymore())==0)
	{
		
	}else{
		data[k]->id=yymore();
		data[k]->val=k;
	}
}
printf("%s (assign)\n", yytext); }
"=="    { printf("%s (equal)\n", yytext); }
"!="    { printf("%s (not equal)\n", yytext); }
">"     { printf("%s (greater)\n", yytext); }
"<"     { printf("%s (smaller)\n", yytext); }
"=>"    { printf("%s (greater or equal)\n", yytext); }
"<="    { printf("%s (smaller or equal)\n", yytext); }
";"     { printf("%s (command end)\n", yytext); }
"("     { printf("%s (left paren)\n", yytext); }
")"     { printf("%s (right paren)\n", yytext); }

[A-Z]+ {
for(k=0;k<cnt;k++){
	if(strcmp(data[k]->id,yytext)==0){
		printf("%s (id, %d)\n", yytext,data[k]->val);
	}
}
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
	//struct id_table data[cnt];

	for(k=0;k<(sizeof(data)/sizeof(struct id_table *));k++)
	{
       		data[k]=malloc(sizeof(struct id_table));
	}

	yylex();
}
