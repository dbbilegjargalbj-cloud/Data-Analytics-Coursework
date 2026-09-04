# Regular Expression Metacharacters

# [-.^$*+?}|

/*
^: Matches the start of a line.

$: Matches the end of a line.

.: Matches any single character except a newline character.

[...]: Matches any one character enclosed in the square brackets. If the first character is "^", it matches any character not enclosed in the brackets.

[^...]: Matches any character not enclosed in the brackets.

p1|p2|p3: Matches any of the patterns p1, p2, or p3.

*: Matches zero or more occurrences of the preceding character or pattern.

+: Matches one or more occurrences of the preceding character or pattern.

?: Matches zero or one occurrence of the preceding character or pattern.

{n}: Matches exactly n occurrences of the preceding character or pattern.

{n,}: Matches n or more occurrences of the preceding character or pattern.

{n,m}: Matches between n and m (inclusive) occurrences of the preceding character or pattern.

( ... ): Groups characters or patterns together.

\b: Matches a word boundary.

\B: Matches a non-word boundary.

\d: Matches any digit.

\D: Matches any non-digit character.

\s: Matches any whitespace character.

\S: Matches any non-whitespace character.

\w: Matches any word character (equivalent to [a-zA-Z0-9_]).

\W: Matches any non-word character.

\n: Matches a newline character.

\r: Matches a carriage return character.

\t: Matches a tab character.

\: Matches a backslash character.

*/


SELECT *
FROM customers
WHERE first_name REGEXP "[a-x]"
;

SELECT *
FROM customers
WHERE total_money_spent REGEXP "[0-9]"
;

SELECT *
FROM customers
WHERE phone REGEXP "." # SEARCHS FOR ANY CHARACTER
;



SELECT *
FROM customers
WHERE phone REGEXP "6." # INCLUED 6 ANYWHERE
;


SELECT *
FROM customers
WHERE first_name REGEXP "k...n" #
;

SELECT *
FROM customers
WHERE first_name REGEXP "^k" # starts with k
;

SELECT *
FROM customers
WHERE first_name REGEXP "n$" # ends with n
;

SELECT *
FROM customers
WHERE first_name REGEXP "Obi.*" # any character(.) + zero or more occurences(*)
;

SELECT *
FROM customers
WHERE first_name REGEXP "Obi." # any character(.) + zero or more occurences(*)
;



SELECT *
FROM customers
WHERE first_name REGEXP "Obi.+" # any character(.) + at least has one or more(+)
;



SELECT *
FROM customers
WHERE first_name REGEXP "Obi.?" # any character(.) + zero or one, not more(?)
;


SELECT *
FROM customers
WHERE first_name REGEXP "K.+n" # any character(.) + zero or one, not more(?)
;




SELECT *
FROM customers
WHERE first_name REGEXP "K.{3}n" # three characters in between
;




SELECT *
FROM customers
WHERE first_name REGEXP "kev|fro" # EITHER OR
;



















