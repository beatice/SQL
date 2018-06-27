# Boolean Literals
/* The constants TRUE and FALSE evaluate to 1 and 0, respectively. */
SELECT TRUE, true, FALSE, false;

# NULL Values
/* The NULL value means “no data.” NULL can be written in any lettercase. A synonym is \N (case-sensitive). */
SELECT NULL, null, '\N', '\n';

/* the NULL value is different from values such as 0 for numeric types or the empty string for string types.  */
SELECT NULL=0, NULL='';
