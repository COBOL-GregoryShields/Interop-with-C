# Interop-with-C

This is example code to show how it is possible to interoperate between C and GnuCOBOL.  


## Code

call-query.c  
This is a C language code file that calls code located in a GnuCOBOL module.  

query.cbl  
This is a COBOL code file which returns a string value to the caller.  


## Compiler commands

cobc -x -fimplicit-init call-query.c query.cbl -o call-query.exe


## Hyperlinks

[Use another language to call a function](https://rosettagit.org/drafts/use-another-language-to-call-a-function/)  



