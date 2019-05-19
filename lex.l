%{
#include "yacc.tab.h"
%}
%%
[0-9]+ return(NUMBER);
[\t];
"/" return('/');
"+" return('+');
"*" return('*');
%%
