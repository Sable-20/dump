       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.

PROGRAM-ID. datac.

AUTHOR. Sable.

DATE-WRITTEN.December 31st 2021

ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
SPECIAL-NAMES.
       CLASS PassingScore IS "A" THRU "C", "D".
      *>CLASS MOB IS 1 THRU 12.
      *>CLASS DOB IS 1 THRU 31.

DATA DIVISION.

FILE SECTION.

WORKING-STORAGE SECTION.
01 Age PIC 999 VALUE 0.
01 Grade PIC 99 VALUE 0.
01 Score PIC X(1) VALUE "B".
01 CanVoteFlag PIC 9 VALUE 0.
       88 CanVote VALUE 1.
       88 CantVote VALUE 0.
01 TestNum PIC X.
       88 IsPrime VALUE "1", "3", "5", "7".
       88 IsOdd VALUE "1", "3", "5", "7", "9".
       88 IsEven VALUE "2", "4", "6", "8".
       88 ANumber VALUE "0" THRU "9".

PROCEDURE DIVISION.
DISPLAY "Enter your age: " WITH NO ADVANCING.
ACCEPT Age.
IF Age >= 18 THEN 
       DISPLAY "You can vote"
ELSE
       DISPLAY "You can't vote"
END-IF
IF Age > 5 THEN 
       DISPLAY "Stay home"
END-IF
IF Age = 5 THEN 
       DISPLAY "Go to kindergarten"
END-IF 
IF AGE > 5 AND < 18 THEN 
       COMPUTE Grade = Age - 5
       DISPLAY "Go to grade " Grade   
END-IF 
IF Age IS GREATER THAN OR EQUAL TO 18
       DISPLAY "Go to college"
END-IF

IF Score IS PassingScore THEN
       DISPLAY "You passed"
ELSE 
       DISPLAY "You failed"
END-IF
IF Score IS NOT NUMERIC THEN 
       DISPLAY "Not a number"
END-IF

IF Age > 18 THEN 
       SET CanVote TO TRUE 
ELSE
       SET CantVote TO TRUE
END-IF 
DISPLAY "Vote " CanVoteFlag.

DISPLAY "Enter single number or X to exit: " WITH NO ADVANCING.
ACCEPT TestNum.
PERFORM UNTIL NOT ANumber
       EVALUATE TRUE
           WHEN IsPrime DISPLAY "Prime"
           WHEN IsOdd DISPLAY "Odd"
           WHEN IsEven DISPLAY "Even"
           WHEN OTHER DISPLAY "Default"
       END-EVALUATE
       ACCEPT TestNum
END-PERFORM



STOP RUN.
