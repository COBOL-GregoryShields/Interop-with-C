       IDENTIFICATION DIVISION.
       PROGRAM-ID. Query.


       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       SPECIAL-NAMES.
           CALL-CONVENTION 0 IS EXTERN.

       REPOSITORY.
           FUNCTION ALL INTRINSIC.


       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01 query-result.
           05 FILLER VALUE "Here I am".

       LINKAGE SECTION.

       01 data-reference.
           05 data-buffer PIC x OCCURS 0 TO 8192 TIMES
                                DEPENDING ON length-reference.

       01 length-reference USAGE binary-long.


       PROCEDURE DIVISION EXTERN USING data-reference length-reference.

       IF LENGTH(query-result) LESS THAN OR EQUAL TO length-reference
         AND length-reference LESS THAN 8193 THEN
           MOVE query-result TO data-reference
           MOVE LENGTH(query-result) TO length-reference
           MOVE 1 TO return-code
       END-IF

       GOBACK.
       END PROGRAM Query.

