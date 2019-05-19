%{
#include <stdio.h>
#include <stdlib.h>
enum tnumber {TEOF, TIDEN, TNUM, TASSIGN, TADD, TSEMI, TDOT, TBEGIN, TEND,TERROR };
%}
letter [a-zA-Z]
digit [0-9]
%%

begin return(TBEGIN);
end return(TEND);

{letter}|({letter}|{digit})* return(TIDEN);

":=" return(TASSIGN);
"+" return(TADD);
{digit}+ return(TNUM);
";" return(TSEMI);
\. return(TDOT);
[ \t\n] ;
. return(TERROR);
%%
void main()
{
 enum tnumber tn;
 printf(" Start of Lex\n");
 while((tn = yylex()) != TEOF) {
  switch(tn) {
   case TBEGIN : printf("시작\n"); break;
   case TEND : printf("종료\n"); break;
   case TIDEN : printf("식별자: %s\n", yytext); break;
   case TASSIGN : printf("Assignment_op\n"); break;
   case TADD : printf("더하기\n"); break;
   case TNUM : printf("숫자: %d\n", atoi(yytext)); break;
   case TSEMI : printf("세미\n"); break;
   case TDOT : printf("점\n"); break;
   case TERROR : printf("Error: %c\n", yytext[0]); break;
  }
 }
}
int yywrap() {
 printf(" End of Lex\n");
 return 1;
}
