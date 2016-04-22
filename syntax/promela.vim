" Vim syntax file
" Language:         ProMeLa
" Maintainer:       Maurizio Tranchero <maurizio.tranchero@polito.it> - <maurizio.tranchero@gmail.com>
" First Release:    Mon Oct 16 08:49:46 CEST 2006
" Last Change:      Thu Aug 7 21:22:48 CEST 2008
" Version:          0.5

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" case is significant
" syn case ignore
" ProMeLa Keywords
syn keyword promelaStatement    proctype break goto unless
syn keyword promelaStatement    active assert label atomic d_step
syn keyword promelaFunctions    skip timeout run init
syn keyword promelaTodo         contained TODO
" ProMeLa control flow
syn keyword promelaConditional  if fi else
syn keyword promelaRepeat       do od while
" ProMeLa Types
syn keyword promelaType         bit bool byte short int hidden chan unsigned
syn keyword promelaConstant     true false TRUE FALSE
syn match   promelaNumber       "[+-]\=\<[0-9]\+\>"
" ProMeLa macros
syn region  promelaDefine       start="^\s*#\s*\(define\)\>" skip="\\$" end="$" end="//"me=s-1
syn keyword promelaMacro        inline
" ProMeLa/Spin LTL
syn keyword promelaLTL          ltl always eventually
" Operators and special characters
syn match promelaOperator   "!"
syn match promelaOperator   "?"
syn match promelaOperator   "->"
syn match promelaOperator   "="
syn match promelaOperator   "+"
syn match promelaOperator   "*"
syn match promelaOperator   "/"
syn match promelaOperator   "-"
syn match promelaOperator   "<"
syn match promelaOperator   ">"
syn match promelaOperator   "<="
syn match promelaOperator   ">="
syn match promelaOperator   "&&"
syn match promelaSpecial    "\[\]"
"syn match promelaSpecial    "\]"
syn match promelaSpecial    ";"
syn match promelaSpecial    "::"
" ProMeLa Comments
syn region promelaComment start="/\*" end="\*/" contains=promelaTodo,@Spell
syn match  promelaComment "//.*" contains=promelaTodo,@Spell

" Class Linking
hi def link promelaStatement    Statement
hi def link promelaType         Type
hi def link promelaComment      Comment
hi def link promelaOperator     Type
hi def link promelaSpecial      Special
hi def link promelaFunctions    Special
hi def link promelaString       String
hi def link promelaTodo         Todo
hi def link promelaConstant     Constant
hi def link promelaDefine       Macro
hi def link promelaMacro        Macro
hi def link promelaRepeat       Repeat
hi def link promelaConditional  Conditional
hi def link promelaNumber       Number
hi def link promelaLTL          Special

let b:current_syntax = "promela"

" vim: ts=4 sts=4 sw=4 expandtab
