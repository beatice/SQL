#Literal Values

#1.String Literals
SELECT 'a string',"another string";
SELECT 'a string','a'' ''string';

/* several ways to include quote charaters within a sting:
1) A ' inside a string quoted with ' may be written as ''.
2) A " inside a string quoted with " may be written as "".
3) Precede the quote character by an escape character (\).
4) A ' inside a string quoted with " needs no special treatment and need not be doubled or escaped. In the same way, " inside a string quoted with ' needs no special treatment. */

SELECT 'hello','he''llo',"he""llo",'he\'llo',"he\"llo",'he\"llo',"he\"llo","he'llo",'he"llo';

SELECT 'a\bb\nc\rd\te\\f\%g\_h\'i\"j';




