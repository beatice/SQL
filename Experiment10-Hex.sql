#4.Hexadecimal Literals
/* Hexadecimal literal values are written using X'val' or 0xval notation, where val contains hexadecimal digits (0..9, A..F) */
SELECT X'01AF',X'01af',x'01AF',x'01af',0x01AF,0x01af;

/* A leading 0x is case-sensitive and cannot be written as 0X. */
SELECT X'0G',0X01AF;

/* Values written using X'val' notation must contain an even number of digits or a syntax error occurs
To correct the problem, pad the value with a leading zero */

SELECT @s = X'FFF';
SELECT @s = X'0FFF';

/* By default, a hexadecimal literal is a binary string, where each pair of hexadecimal digits represents a character */
SELECT X'4D7953514C', CHARSET(X'4D7953514C');
SELECT 0x5461626c65, CHARSET(0x5461626c65);

/* To ensure numeric treatment of a hexadecimal literal, use it in numeric context. Ways to do this include adding 0 or using CAST(... AS UNSIGNED).  */
SET @v1 = X'41';
SET @v2 = X'41' + 0;
SET @v3 = CAST(X'41' AS UNSIGNED);
SELECT @v1, @v2, @v3;

/* An empty hexadecimal value (X'') evaluates to a zero-length binary string. Converted to a number, it produces 0 */
SELECT CHARSET(X''), LENGTH(X''), X'' + 0;

/* To convert a string or a number to a string in hexadecimal format, use the HEX() function: */
SELECT HEX('cat'), HEX(124);

