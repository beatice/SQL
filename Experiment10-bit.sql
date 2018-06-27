# Bit-Value Literals
DROP DATABASE test;
CREATE DATABASE test;
use test;

/* Bit-value literals are written using b'val' or 0bval notation.
val is a binary value written using zeros and ones. */
SELECT B'01', b'01', 0b01;

/* By default, a bit-value literal is a binary string */
SELECT b'1000001', CHARSET(b'1000001');
SELECT 0b1100001, CHARSET(b'1000001');

/* To ensure numeric treatment of a bit literal, use it in numeric context. Ways to do this include adding 0 or using CAST(... AS UNSIGNED). */
SET @v1 = b'1100001';
SET @v2 = b'1100001'+0;
SET @v3 = CAST(b'1100001' AS UNSIGNED);
SELECT @v1, @v2, @v3;

/* An empty bit value (b'') evaluates to a zero-length binary string. Converted to a number, it produces 0 */
SELECT CHARSET(b''),LENGTH(b''),b''+0;

/* Bit-value notation is convenient for specifying values to be assigned to BIT columns */
CREATE TABLE t (b BIT(8));
INSERT INTO t SET b = b'11111111';
INSERT INTO t VALUES(b'1010',b'0101');

/* Bit values in result sets are returned as binary values, which may not display well. To convert a bit value to printable form, use it in numeric context or use a conversion function such as BIN() or HEX() */
SELECT b+0, BIN(b), OCT(b), HEX(b) FROM t;
