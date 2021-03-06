/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    ADD = 258,
    MIN = 259,
    MUL = 260,
    DIV = 261,
    ASSIGN = 262,
    EQUAL = 263,
    NOT_EQUAL = 264,
    GREATER = 265,
    SMALLER = 266,
    GREATER_OR_EQUAL = 267,
    SMALLER_OR_EQUAL = 268,
    END = 269,
    LEFT_P = 270,
    RIGHT_P = 271,
    IF = 272,
    THEN = 273,
    ELSE = 274,
    ENDIF = 275,
    PRINT = 276,
    STRING = 277,
    ID = 278,
    R_NUM = 279,
    D_NUM = 280
  };
#endif
/* Tokens.  */
#define ADD 258
#define MIN 259
#define MUL 260
#define DIV 261
#define ASSIGN 262
#define EQUAL 263
#define NOT_EQUAL 264
#define GREATER 265
#define SMALLER 266
#define GREATER_OR_EQUAL 267
#define SMALLER_OR_EQUAL 268
#define END 269
#define LEFT_P 270
#define RIGHT_P 271
#define IF 272
#define THEN 273
#define ELSE 274
#define ENDIF 275
#define PRINT 276
#define STRING 277
#define ID 278
#define R_NUM 279
#define D_NUM 280

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
