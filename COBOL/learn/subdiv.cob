       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. subdiv.
AUTHOR. Sable.
DATE-WRITTEN.December 31st 2021
ENVIRONMENT DIVISION.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.

PROCEDURE DIVISION.
SubOne.
       DISPLAY "in paragraph one"
       PERFORM SubTwo
       DISPLAY "returned to paragraph one"
       PERFORM SubFour 2 TIMES
       STOP RUN.

SubThree.
       DISPLAY "In paragaph 3".

SubTwo.
       DISPLAY "in paragaph 2"
       PERFORM SubThree 
       DISPLAY "BACK TO PARAGRAPH TWO".

SubFour.
       DISPLAY "Repeat."

STOP RUN.
