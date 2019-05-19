%token INTEGER
%left '+' '-'
%left '*' '/'

%{
  void yyerror(char *);
  int yylex(void);
%}

%%

program:
    program statement '\n'
    |
    ;

statement:
    expr                  { printf("계산결과 %d\n", $1); }
    ;

expr:
    INTEGER
    | VARIABLE            { $$ = sym[$1]; }
    | expr '+' expr       { $$ = $1 + $3; }
    | expr '-' expr       { $$ = $1 - $3; }
    | expr '*' expr       { $$ = $1 * $3; }
    | expr '/' expr       { $$ = $1 / $3; }
    | '(' expr ')'        { $$ = $2; }
    ;

%%
void yyerror(char *s)
{
  printf("%s\n", s);
  return 0;
}

int main(void)
{
  yyparse();
  return 0;
}
