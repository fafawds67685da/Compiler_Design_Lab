1. in Regular Expressions, [RE], with no sign outside refers to only one charachter
2. [RE]+ is combination of the Regular expression for every possibility except the null.
3. [RE]* it also include the null character.


about (.) or (.*) which acts like an else statement after the RE expression conditional statement

1. (.) checks character by character
2. (.*) checks the whole string at once.



How to run?

1. flex Test1.l
2. gcc lex.yy.c
3. a