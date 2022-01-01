#include <toos/kout.h>
#include <toos/types.h>

/* puts out one char onto the screen and returns a boolean value 
   true means it succeeded while false means it failed
*/
BOOL kputchar(char character) {
    return TRUE;
}

/* clears the screen, returns true or false
   true means it succeeded false means it failed
*/
BOOL kclear() {
    return TRUE;
}

/* an extension of kputchar
   loops through each character in the string 
   and prints them all
   returns true or false true means succeeded false means failed

   TODO: optimize
*/
BOOL kputs(char * string) {
    return TRUE;
}

/* an extension of kputs
   a printf implementation(also it auto adds `\n` to the end cause i cant stand adding that manually)
   true return value means its succeeded false means it failed
*/
BOOL kprintf(char * string) {
    return TRUE;
}