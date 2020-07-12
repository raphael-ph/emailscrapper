
%{
#include <stdio.h>
%}

EMAIL ([a-zA-Z0-9][A-Za-z0-9._-]+[a-zA-Z0-9]@[A-Za-z0-9._-]*[A-Za-z0-9]([.][A-Za-z]+)*)

%%

{EMAIL} { printf("%s\n", yytext); }


[[:space:]] ;
[^[:space:]] ;
({EMAIL}[-]) ;

%%

int main() {
  yylex();
  return 0;
}
