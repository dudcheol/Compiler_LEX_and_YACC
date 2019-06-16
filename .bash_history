lex
int yywrap(void)
{   return 1; }
[출처]  bison 예제 2 괄호연산을 포함한 사칙연산 계산기|작성자 세잎클로버
lex
%{
#include <stdlib.h>
void yyerror(char *);
#include "mycal.tab.h"
%}
%%
[0-9]+  {
[-+()=*/\n] {return *yytext;}
[ \t]   ;
.       yyerror("invalid character");
%%
int yywrap(void)
{   return 1; }%{ void yyerror(char *);
#include "mycal.tab.h"
%}
%%
[0-9]+  {
[-+()=*/\n] {return *yytext;}
[ \t]   ;
.       yyerror("invalid character");
%%
int yywrap(void)
{   return 1; }

%{
lex
ls
cd ..
cd
cd ..
mkdir
mkdir yc
cd ..
cd
lex
cd lex
ls
lex.yy.c
cd ..
cd
cd ..
ls
cd
ls
ls -al
cd ..
ls -al
cd
ls
./lex.yy.c
vi lex.yy.c
ftp lex.yy.c
cd
ls
cd ..
cd
ls
cd ce14e016
lex.yy.c
lex
vi lex
ls
vi
cat lex.yy.c
flex test.l
gcc lex.yy.c -o test.exe
bison -d test.y
gcc lex.yy.c.y.yab.c -o test.exe
gcc lex.yy.c -o test.exe
gcc lex.yy.c.y.yab.c -o test.exe
lex lextest
cc lex.yy.c -ll
lex lextest
cc lex.yy.c -ll
flex example.l
vi
ls
vi smartCalculator
ls
bison -d smartCalculator.y
gcc lex.yy.c example.tab.c -o example
gcc lex.yy.c smartCalculator.tab.c -o example
ls
vi smartCalculator
ls
flex smartCalculator.l
gcc lex.yy.c smartCalculator.tab.c -o example
gcc lex.yy.c -o smartCalculator.exe
flex smartCalculator.l
ls
gcc lex.yy.c -o smartCalculator.exe
bison -d smartCalculator.y
flex smartCalculator.l
gcc lex.yy.c y.yab.c -o smartCalculator.exe
gcc lex.yy.c smartCalculator.tab.c -o smartCalculator
vi
ls
lex mycalc.l
cc -o mycal y.tab.c lex.yy.c
gcc -o mycal y.tab.c lex.yy.c
vi mycalc
vi mycalc.c
vi mycalc.l
ls
cat mycalc.l
vi
ls
vi
iv
vi
yacc -dv mycalc.y
vi mycalc.y
yacc -dv mycalc.y
lex mycalc.l
cc -o mycalc y.tab.c lex.yy.c
gcc -o mycalc y.tab.c lex.yy.c
vi mycalc.y
vi mycalc.l
ls
cat y.output
ls
yacc -dv mycalc.y
lex mycalc.l
cc -o mycalc y.tab.c lex.yy.c
vi mycalc.y
yacc -dv mycalc.y
lex mycalc.l
cc -o mycalc y.tab.c lex.yy.c
vi
cat test.dat
ls -al
lex test.l
cat test.l
vi test.l
lex test.l
gcc lex.yy.c -o test -ll
lex test.l
./test<test.dat
ls
y.output
y.out
test.out
test
dd
yacc -d calc.yacc
vi
yacc -d calc.yacc
lex calc.lex
ls
yacc -d calc.y
vi calc
vi calc.y
vi calc.l
yacc -d calc.yacc
ls
cat y.tab.c
ls
vi
v
vi
flex lex.l
bison -d yacc.y
gcc -o test lex.yy.c yacc.tab.c -ly -ll
./test < sample
vi lex.l
flex lex.l
vi lex.l
flex lex.l
vi yacc.y
bison -d yacc.y
gcc -o test lex.yy.c yacc.tab.c -ly -ll
./test < sample
cat sample
vi yacc.y
cat yacc.y
:q
vi yacc.y
flex lex.l
bison -d yacc.y
gcc -o test lex.yy.c yacc.tab.c -ly -ll
./test < sample
lex mycalc.l
yacc -dv mycalc.y
cc -o mycalc y.tab.c lex.yy.c
./mycalc < sample
vi mycalc.l
ls
cat mycalc
PuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYls
ls
cat y.output
ls
cat test.l
ls
cat calc.lex
ls
vi mycalc.l
vi mycalc
./mycalc < 1+1
./mycalc < 1+1=
./mycalc < sample
ls
cat mycalc.y
vi mycalc.l
vi mycalc.y
vi mycalc.l
vi mycalc.y
vi mycalc.l
ls
cat test.l
ls
yacc.y
cat yacc.y
ls
cat test.dat
ls
vi
a
bison -d cal.y
ls
cat lex.l
flex lex.l
./test < sample
gcc -o test lex.yy.c -ly -ll
./test < sample
vi lex.l
vi
lex tokenize.l
cc lex.yy.c -ll
a.out < sample
ls
vi test.dat
vi
a.out < input.dat
ls
a.out
a.out < input.dat
lex
a.out < input.dat
./a.out < input.dat
cat input.dat
vi tokenize.l
ls
cat mycalc.l
vi tokenize.l
lex tokenize.l
cc lex.yy.c -ll
./a.out < input.dat
vi tokenize.l
vi
lex ex04.l
cc lex.yy.c -ll
./a.out < input04
vi tokenize.l
:q
vi tokenize.l
vi token.l
lex token.l
vi
cc lex.yy.c -ll
vi token.l
lex token.l
cc lex.yy.c -ll
vi token.l
lex token.l
cc lex.yy.c -ll
ls
./a.out token_input
lex ex04.l
cc lex.yy.c -ll
./a.out < input04
lex token.l
cc lex.yy.c -ll
./a.out <  token_input
vi token.l
lex token.l
cc lex.yy.c -ll
vi token.l
lex token.l
cc lex.yy.c -ll
lex token.l
vi token.l
lex token.l
cc lex.yy.c -ll
vi token.l
lex token.l
cc lex.yy.c -ll
vi token.l
lex token.l
cc lex.yy.c -ll
vi token.l
lex token.l
cc lex.yy.c -ll
vi token.l
lex token.l
cc lex.yy.c -ll
vi token.l
lex token.l
cc lex.yy.c -ll
vi token.l
lex token.l
cc lex.yy.c -ll
./a.out < token_input
ls
cat token_input
./a.out < token_input
vi token.l
lex token.l
cc lex.yy.c -ll
vi token.l
lex token.l
cc lex.yy.c -ll
vi token.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
ls
./a.out < test.dat
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
./a.out < token_input
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
ls
cat pyc.l
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
cat pyc.l
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
cat pyc.l
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
cat pyc.l
ls
cat token_input
cat pyc.l
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
./a.out < token_input
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi token_input
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
cat pyc.l
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l

cc lex.yy.c -ll
./a.out < token_input
lex pyc.l
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
cat pyc.l
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
vi
./a.out < test
vi test
./a.out < test
ls
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
./a.out < token_input
cat pyc.l
./a.out < token_input
vi pyc.l
ls
a.out token_input
./a.out < token_input
ls
cat pyc.l
cat lex.yy.c
ls
cat lex.yy.c
ls
cat yacc.y
cat y.tab.c
ls
cat pyc.l
vi pyc.y
yacc -d pyc.y
yacc -d pyc.yacc
ls
yacc -d mycalc.y
ls
ls y.tab.h
caty y.tab.h
vi pyc.y
vi pyc.l
lex pyc.l
cc lex.yy.c -ll
vi pyc.y
vi pyc.l
vi pyc.y
lex pyc.l
yacc pyc.y
ls pyc.y
bison -d pyc.y
vi pyc.l
vi pyc.y
yacc pyc.y
vi pyc.y
yacc pyc.y
vi pyc.y
yacc pyc.y
vi pyc.y
vi pyc.l
vi pyc2.l
ls
vi pyc2.l
lex pyc2.l
cc lex.yy.c -ll
./a.out < token_input
./a.out
./a.out <  token_input
ls token_input
a.out  < token_input
./a.out < token_input
ls a.out
ls
vi pyc2.l
lex pyc.l
cc lex.yy.c  -ll
lex pyc2.l
cc lex.yy.c -ll
vi pyc2.l
lex pyc2.l
cc lex.yy.c -ll
vi pyc2.l
lex pyc2.l
cc lex.yy.c -ll
./a.out < token_input
pyc.y
vi pyc.y
vi pyc.l
vi pyc.y
ls
vi pyc.y
pyc2.l
vi pyc.
vi pyc.y
vi pyc2.l
vi pyc.l
vi pyc.y
yacc -dv pyc.y
vi pyc.y
yacc -dv pyc.y
lex pyc2.l
cat pyc2.l
yacc -dv pyc.y
lex pyc.l
cc -o pyc y.tab.c lex.yy.c
vi pyc.l
vi pyc2.l
vi pyc.l
vi test.y
vi pyc.l
vi test.y
vi exam
vi test.y
flex pyc.l
bison -d yacc.y
bison -d test.y
flex pyc.l
bison -d test.y
vi test.y
vi calc.l
vi calc.y
flex calc.l
bison -d calc.y
vi calc.y
bison -d calc.y
gcc -o calc lex.yy.c calc.tab.c -ly -ll
vi calc.l
flex calc.l
bison -d calc.y
gcc -o calc lex.yy.c calc.tab.c -ly -ll
calc.l
vi calc.l
flex -d calc.l
bison -d calc.y
gcc -o calc lex.yy.c calc.tab.c -ly -ll
vi calc.l
flex calc.l
bison -d calc.y
gcc -o calc lex.yy.c calc.tab.c -ly -ll
gedit input
vi input
./calc < input
vi input
./calc < input
vi input
./calc < input
vi input
./calc < input
vi pyc.l
flex pyc.l
bison -d test.y
calc.y
vi calc.t
vi calc.y
vi test.y
bison -d test.y
vi test.y
bison -d test.y
gcc -o test lex.yy.c calc.tab.c -ly –ll
flex pyc.l
bison -d test.y
gcc -o test lex.yy.c calc.tab.c -ly –ll
vi
vi pyc.l
flex pyc.l
bison -d test.y
gcc -o test lex.yy.c calc.tab.c -ly –ll
gcc -o test lex.yy.c calc.tab.c -ly -ll
./test < input
vi pyc.l
ls
cat test
PuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTYPuTTY:q
ls
vi test
vi test.dat
vi input
./test < input
cat input
vi pyc.l
vi pyc2.l
lex pyc2.l
bison -d test.y
gcc -o test lex.yy.c calc.tab.c -ly -ll
./test < input
vi pyc.l
vi pyc2.l
vi pyc.l
flex pyc.l
bison -d test.y
gcc -o test lex.yy.c calc.tab.c -ly -ll
./test < input
cat input
vi test.y
vi input
./test < input
vi tset.y
vi test.y
vi input
./test < input
vi test.y
vi pyc.l
flex pyc.l
bison -d test.y
vi test.y
gcc -o test lex.yy.c calc.tab.c -ly -ll
./test < input
vi test.y
bison -d test.y
gcc -o test lex.yy.c calc.tab.c -ly -ll
./test < input
vi pyc2.l
ls
vi  test
vi test
cat test.tab.h
vi test.y
bison -d test.y
gcc -o test lex.yy.c calc.tab.c -ly -ll
./test < input
vi test.y
ls
ls pyc.yy.c
vi test.y
yacc -dv test.y
lex pyc.l
cc -o test1 y.tab.c lex.yy.c
vi test.y
yacc -dv test.y
vi test.y
lex pyc.l
cc -o test1 y.tab.c lex.yy.c
ls
ls test1
cc -o test1 y.tab.c lex.yy.c
vi test.y
yacc -dv test.y
cc -o test1 y.tab.c lex.yy.c
vi test.y
yacc -dv test.y
cc -o test1 y.tab.c lex.yy.c
yacc -d test.y
cc -o test1 y.tab.c lex.yy.c
vi test.y
vi pyc.l
test
B=10;
ls
vi test_cal.l
vi test_cal.y
lex test_cal.l
vi test_cal.l
lex test_cal.l
yacc test_cal.y
cc y.tab.c -ll -o calc
ls
vi test_cal.y
vi test_cal.l
lex test_cal.l
yacc test_cal.y
cc y.tab.c -ll -o calc
calc
./calc < input
vi input
./calc < input
vi pyc.l
vi test_cal.l
vi pyc.l
vi smartCal.l
vi test.y
vi smartCal.y
vi test_cal.y
vi smartCal.y
lex samrtCal.l
lex smartCal.l
yacc smartCal.y
vi smartCal.y
lex smartCal.l
yacc smartCal.y
vi smartCal.y
lex smartCal.l
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
vi smartCal.y
:q
vi smartCal.y
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
vi smartCal.y
vi smartCal.l
vi test_cal.l
vi input
calc
ls
calc

vi smartCal.l
vi smartCal.y
vi smartCal.l
lex smartCal.l
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
vi smartCal.y
vi smartCal.l
vi test_cal.l
vi smartCal.l
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
ls
yacc smartCal.y
vi smartCal.y
vi smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
ls
vi input
vi input2
smartCal
mycalc
calc
./smartCal input2
./calc  input
./a.out test
lex test_cal.l
yacc test_cal.y
cc y.tab.c -ll -o testcal
testcal
ls
./testcal < input
./smartCal < input2
cat inpujt2
cat input2
vi smartCal.l
ls
lex smartCal.l
yacc -d smartCal.y
cc y.tab.c -ll -o testcal
ls
./smartCal < input2
vi smartCal.l
yacc -d smartCal.y
cc y.tab.c -ll -o testcal
./testcal < input2
cc y.tab.c -ll -o smartCal
./smartCal < input
./smartCal < input2
cat input2
vi smartCal.y
yacc -d smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.y
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
cat input2
vi smartCal.l
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.y
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.y
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.l
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.y
vi input
vi input2
./smartCal < input2
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
yacc -d  smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.l
lex smartCal.l
yacc -d  smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi input2
vi smartCal.l
lex smartCal.l
yacc -d  smartCal.y
cc y.tab.c -ll -o smartCal
lex smartCal.y
vi smartCal.y
lex smartCal.l

vi smartCal.y
lex smartCal.l
yacc -d smartCal.y
cc y.tab.c -ll -o smartCal
vi smartCal.l
lex smartCal.l
yacc -d smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.l
lex smartCal.l
yacc -d smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.l
cc y.tab.c -ll -o smartCal
lex test_cal.l
yacc test_cal.y
cc y.tab.c -ll -o testcal
./testcal < input
./testcal < input2
vi testcal
vi test_cal.y
lex test_cal.l
yacc test_cal.y
cc y.tab.c -ll -o testcal
./testcal < input2
./testcal < input
vi test_cal.y
lex test_cal.l
yacc test_cal.y
cc y.tab.c -ll -o testcal
./testcal <input
vi test_cal.y
yacc test_cal.y
cc y.tab.c -ll -o testcal
./testcal <input
vi test_cal.y
yacc test_cal.y
cc y.tab.c -ll -o testcal
./testcal <input
vi test_cal.y
vi smartCal.y
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o testcal
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.y
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.l
vi smartCal.y
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
d
vi smartCal.l
yacc smartCal.y
lex smartCal.l
cc y.tab.c -ll -o smartCal
vi smartCal.y
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.y
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.y
vi smartCal.l
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.y
lex smartCal.l
yacc smartCal.y
./smartCal < input2
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.y
vi smartCal.l
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
cat input2
vi smartCal.l
vi smartCal.y
lex smartCal.l

cc y.tab.c -ll -o smartCal
vi smartCal.l
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.y
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
vi smartCal.y
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.y
vi smartCal.l
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
vi smartCal.l
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.y
vi smartCal.l
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.l
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
vi smartCal.l
vi smartCal.y
lex smartCal.l
yacc smartCal.y
lex smartCal.l
yacc smartCal.y
vi smartCal.y
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.l
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi input2
./smartCal < input2
vi smartCal.y
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
vi smartCal.y
vi input3
vi smartCal.y
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
vi smartCal.y
vi smartCal.l
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
lex smartCal.
yacc smartCal.y
cc y.tab.c -ll -o smartCal
vi smartCal.y
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input2
./smartCal < input3
cat input
cat input3
vi smartCal.y
vi input3
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
./smartCal < input3
lex sartCal.l
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
cat input3
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
vi smartCal.y
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
vi input3
./smartCal < input3
vi smartCal.y
vi smartCal.l
lex smartCal.l
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
vi smartCal.y
vi smartCal.l
vi pyc2.l
vi pyc.l
vi pyc2.l
vi smartCal.l
vi smartCal.y
vi smartCal.l
vi smartCal.y
vi pyc2.l
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
vi smartCal.y
vi pyc.y
vi pyc.l
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
vi smartCal.l
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
:wq
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
yacc smartCal.l
vi smartCal.l
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
vi smartCal.l
vi smartCal.y
vi smartCal.l
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
vi smartCal.l
vi smartCal.y
vi smartCal.l
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
yacc smartCal.l
vi smartCal.l
vi extern.h
vi smartCal.l
vi extern.h
vi smartCal.l
vi extern.h
vi smartCal.l
vi smartCal.y
lex smartCal.l
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
vi smartCal.l
vi smartCal.y
vi smartCal.l
vi smartCal.y
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
vi extern.h
vi smartCal.l
vi smartCal.y
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
vi smartCal.y
vi smartCal.l
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
vi smartCal.l
vi extern.h
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
vi smartCal.l
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
vi extern.h
lex smartCal.l
vi smartCal.l
vi smartCal.y
vi smartCal.l
vi smartCal.y
vi smartCal.l
vi smartCal.y
vi smartCal.l
vi smartCal.y
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
vi smartCal.y
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
yacc smartCal.y
vi smartCal.y
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
vi smartCal.y
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
vi smartCal.y
vi pyc2.l
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
vi pyc2.l
vi pyc.l
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
vi smartCal.y
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
yacc smartCal.y
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
vi smartCal.y
vi smartCal.l
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
vi smartCal.y
vi smartCal.l
vi smartCal.y
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input3
vi smartCal.y
