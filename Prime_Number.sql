/* Print Prime Number in MYSQL*/

/* Generate a number */
SELECT 0; 

/* OUTPUT:
0
*/

/* Generate a sequence FROM 0 - 9 */
SELECT * 
FROM
 (
 	SELECT 0 x 
 	UNION SELECT 1 
 	UNION SELECT 2 
 	UNION SELECT 3 
 	UNION SELECT 4 
 	UNION SELECT 5 
 	UNION SELECT 6 
 	UNION SELECT 7 
 	UNION SELECT 8 
 	UNION SELECT 9
 ) A;

/* OUTPUI: 
0 
1 
2 
3 
4 
5 
6 
7 
8 
9 
*/


/* Generate a sequence FROM 1 - 100*/
SELECT (j*10+i+1) x 
FROM
(
 SELECT 0 j 
 UNION SELECT 1 
 UNION SELECT 2 
 UNION SELECT 3 
 UNION SELECT 4 
 UNION SELECT 5 
 UNION SELECT 6 
 UNION SELECT 7 
 UNION SELECT 8 
 UNION SELECT 9
) A,
(
 SELECT 0 i 
 UNION SELECT 1 
 UNION SELECT 2 
 UNION SELECT 3 
 UNION SELECT 4 
 UNION SELECT 5 
 UNION SELECT 6 
 UNION SELECT 7 
 UNION SELECT 8 
 UNION SELECT 9
 ) B
ORDER BY x;

/* OUTPUI: 
1 
2 
3 
4 
5 
6 
7 
8 
9 
10 
11 
12 
13 
14 
15 
16 
17 
18 
19 
20 
21 
22 
23 
24 
25 
26 
27 
28 
29 
30 
31 
32 
33 
34 
35 
36 
37 
38 
39 
40 
41 
42 
43 
44 
45 
46 
47 
48 
49 
50 
51 
52 
53 
54 
55 
56 
57 
58 
59 
60 
61 
62 
63 
64 
65 
66 
67 
68 
69 
70 
71 
72 
73 
74 
75 
76 
77 
78 
79 
80 
81 
82 
83 
84 
85 
86 
87 
88 
89 
90 
91 
92 
93 
94 
95 
96 
97 
98 
99 
100 
*/

/* Generate a sequence FROM 1 - 1000*/
SELECT (k*100+j*10+i+1) x 
FROM
(
 SELECT 0 k 
 UNION SELECT 1 
 UNION SELECT 2 
 UNION SELECT 3 
 UNION SELECT 4 
 UNION SELECT 5 
 UNION SELECT 6 
 UNION SELECT 7 
 UNION SELECT 8 
 UNION SELECT 9
) A,
(
 SELECT 0 j 
 UNION SELECT 1 
 UNION SELECT 2 
 UNION SELECT 3 
 UNION SELECT 4 
 UNION SELECT 5 
 UNION SELECT 6 
 UNION SELECT 7 
 UNION SELECT 8 
 UNION SELECT 9
 ) B,
(
 SELECT 0 i 
 UNION SELECT 1 
 UNION SELECT 2 
 UNION SELECT 3 
 UNION SELECT 4 
 UNION SELECT 5 
 UNION SELECT 6 
 UNION SELECT 7 
 UNION SELECT 8 
 UNION SELECT 9
 ) C
ORDER BY x;



/* Join 2 tables for comparasion */
SELECT 
  dividend.x, 
  divisor.y, 
  MOD(dividend.x, divisor.y)
FROM
(
  SELECT (k*100+j*10+i+1) x 
  FROM
   (
    SELECT 0 k 
    UNION SELECT 1 
    UNION SELECT 2 
    UNION SELECT 3 
    UNION SELECT 4 
    UNION SELECT 5 
    UNION SELECT 6 
    UNION SELECT 7 
    UNION SELECT 8 
    UNION SELECT 9
   ) A,
   (
    SELECT 0 j 
    UNION SELECT 1 
    UNION SELECT 2 
    UNION SELECT 3 
    UNION SELECT 4 
    UNION SELECT 5 
    UNION SELECT 6 
    UNION SELECT 7 
    UNION SELECT 8 
    UNION SELECT 9
   ) B,
   (
    SELECT 0 i 
    UNION SELECT 1 
    UNION SELECT 2 
    UNION SELECT 3 
    UNION SELECT 4 
    UNION SELECT 5 
    UNION SELECT 6 
    UNION SELECT 7 
    UNION SELECT 8 
    UNION SELECT 9
   ) C
) dividend, 
(
  SELECT (k*100+j*10+i+1) y 
  FROM
   (
    SELECT 0 k 
    UNION SELECT 1 
    UNION SELECT 2 
    UNION SELECT 3 
    UNION SELECT 4 
    UNION SELECT 5 
    UNION SELECT 6 
    UNION SELECT 7 
    UNION SELECT 8 
    UNION SELECT 9
   ) A,
   (
    SELECT 0 j 
    UNION SELECT 1 
    UNION SELECT 2 
    UNION SELECT 3 
    UNION SELECT 4 
    UNION SELECT 5 
    UNION SELECT 6 
    UNION SELECT 7 
    UNION SELECT 8 
    UNION SELECT 9
   ) B,
   (
    SELECT 0 i 
    UNION SELECT 1 
    UNION SELECT 2 
    UNION SELECT 3 
    UNION SELECT 4 
    UNION SELECT 5 
    UNION SELECT 6 
    UNION SELECT 7 
    UNION SELECT 8 
    UNION SELECT 9
   ) C
) divisor
WHERE
   dividend.x >= divisor.y
ORDER BY 1, 2
LIMIT 100; 


/* ONLY consider when divisor > 1 and MOD(dividend.x, divisor.x) = 0 case */

SELECT 
  dividend.x, 
  divisor.y, 
  MOD(dividend.x, divisor.y)
FROM
(
  SELECT (k*100+j*10+i+1) x 
  FROM
   (
    SELECT 0 k 
    UNION SELECT 1 
    UNION SELECT 2 
    UNION SELECT 3 
    UNION SELECT 4 
    UNION SELECT 5 
    UNION SELECT 6 
    UNION SELECT 7 
    UNION SELECT 8 
    UNION SELECT 9
   ) A,
   (
    SELECT 0 j 
    UNION SELECT 1 
    UNION SELECT 2 
    UNION SELECT 3 
    UNION SELECT 4 
    UNION SELECT 5 
    UNION SELECT 6 
    UNION SELECT 7 
    UNION SELECT 8 
    UNION SELECT 9
   ) B,
   (
    SELECT 0 i 
    UNION SELECT 1 
    UNION SELECT 2 
    UNION SELECT 3 
    UNION SELECT 4 
    UNION SELECT 5 
    UNION SELECT 6 
    UNION SELECT 7 
    UNION SELECT 8 
    UNION SELECT 9
   ) C
) dividend, 
(
  SELECT (k*100+j*10+i+1) y 
  FROM
   (
    SELECT 0 k 
    UNION SELECT 1 
    UNION SELECT 2 
    UNION SELECT 3 
    UNION SELECT 4 
    UNION SELECT 5 
    UNION SELECT 6 
    UNION SELECT 7 
    UNION SELECT 8 
    UNION SELECT 9
   ) A,
   (
    SELECT 0 j 
    UNION SELECT 1 
    UNION SELECT 2 
    UNION SELECT 3 
    UNION SELECT 4 
    UNION SELECT 5 
    UNION SELECT 6 
    UNION SELECT 7 
    UNION SELECT 8 
    UNION SELECT 9
   ) B,
   (
    SELECT 0 i 
    UNION SELECT 1 
    UNION SELECT 2 
    UNION SELECT 3 
    UNION SELECT 4 
    UNION SELECT 5 
    UNION SELECT 6 
    UNION SELECT 7 
    UNION SELECT 8 
    UNION SELECT 9
   ) C
) divisor
WHERE
   dividend.x >= divisor.y AND
   divisor.y > 1
HAVING
   MOD(dividend.x, divisor.y) = 0
ORDER BY 1, 2
LIMIT 100; 


/* LIST ALL prime numbers */
SELECT prime.a
FROM
(
  SELECT 
    dividend.x AS a, 
    divisor.y AS b, 
    MOD(dividend.x, divisor.y)
  FROM
  (
    SELECT (k*100+j*10+i+1) x 
    FROM
    (
      SELECT 0 k 
      UNION SELECT 1 
      UNION SELECT 2 
      UNION SELECT 3 
      UNION SELECT 4 
      UNION SELECT 5 
      UNION SELECT 6 
      UNION SELECT 7 
      UNION SELECT 8 
      UNION SELECT 9
    ) A,
    (
      SELECT 0 j 
      UNION SELECT 1 
      UNION SELECT 2 
      UNION SELECT 3 
      UNION SELECT 4 
      UNION SELECT 5 
      UNION SELECT 6 
      UNION SELECT 7 
      UNION SELECT 8 
      UNION SELECT 9
    ) B,
    (
      SELECT 0 i 
      UNION SELECT 1 
      UNION SELECT 2 
      UNION SELECT 3 
      UNION SELECT 4 
      UNION SELECT 5 
      UNION SELECT 6 
      UNION SELECT 7 
      UNION SELECT 8 
      UNION SELECT 9
    ) C
  ) dividend, 
  (
    SELECT (k*100+j*10+i+1) y 
    FROM
    (
      SELECT 0 k 
      UNION SELECT 1 
      UNION SELECT 2 
      UNION SELECT 3 
      UNION SELECT 4 
      UNION SELECT 5 
      UNION SELECT 6 
      UNION SELECT 7 
      UNION SELECT 8 
      UNION SELECT 9
    ) A,
    (
      SELECT 0 j 
      UNION SELECT 1 
      UNION SELECT 2 
      UNION SELECT 3 
      UNION SELECT 4 
      UNION SELECT 5 
      UNION SELECT 6 
      UNION SELECT 7 
      UNION SELECT 8 
      UNION SELECT 9
    ) B,
    (
      SELECT 0 i 
      UNION SELECT 1 
      UNION SELECT 2 
      UNION SELECT 3 
      UNION SELECT 4 
      UNION SELECT 5 
      UNION SELECT 6 
      UNION SELECT 7 
      UNION SELECT 8 
      UNION SELECT 9
    ) C
  ) divisor
  WHERE
    dividend.x >= divisor.y AND
    divisor.y > 1
  HAVING
   MOD(a, b) = 0
  ORDER BY 1, 2
) prime
GROUP BY 1
HAVING COUNT(prime.a) = 1; 





/* Question: Write a query to print all prime numbers less than or equal to 1000. Print your result on a single line, and use the ampersand (&) character as your separator (instead of a space). */


SELECT GROUP_CONCAT(c SEPARATOR '&')
FROM
(
SELECT prime.a AS c
FROM
(
SELECT 
  dividend.x AS a, 
  divisor.y AS b, 
  MOD(dividend.x, divisor.y)
FROM
(
  SELECT (k*100+j*10+i+1) x 
  FROM
   (
    SELECT 0 k 
    UNION SELECT 1 
    UNION SELECT 2 
    UNION SELECT 3 
    UNION SELECT 4 
    UNION SELECT 5 
    UNION SELECT 6 
    UNION SELECT 7 
    UNION SELECT 8 
    UNION SELECT 9
   ) A,
   (
    SELECT 0 j 
    UNION SELECT 1 
    UNION SELECT 2 
    UNION SELECT 3 
    UNION SELECT 4 
    UNION SELECT 5 
    UNION SELECT 6 
    UNION SELECT 7 
    UNION SELECT 8 
    UNION SELECT 9
   ) B,
   (
    SELECT 0 i 
    UNION SELECT 1 
    UNION SELECT 2 
    UNION SELECT 3 
    UNION SELECT 4 
    UNION SELECT 5 
    UNION SELECT 6 
    UNION SELECT 7 
    UNION SELECT 8 
    UNION SELECT 9
   ) C
) dividend, 
(
  SELECT (k*100+j*10+i+1) y 
  FROM
   (
    SELECT 0 k 
    UNION SELECT 1 
    UNION SELECT 2 
    UNION SELECT 3 
    UNION SELECT 4 
    UNION SELECT 5 
    UNION SELECT 6 
    UNION SELECT 7 
    UNION SELECT 8 
    UNION SELECT 9
   ) A,
   (
    SELECT 0 j 
    UNION SELECT 1 
    UNION SELECT 2 
    UNION SELECT 3 
    UNION SELECT 4 
    UNION SELECT 5 
    UNION SELECT 6 
    UNION SELECT 7 
    UNION SELECT 8 
    UNION SELECT 9
   ) B,
   (
    SELECT 0 i 
    UNION SELECT 1 
    UNION SELECT 2 
    UNION SELECT 3 
    UNION SELECT 4 
    UNION SELECT 5 
    UNION SELECT 6 
    UNION SELECT 7 
    UNION SELECT 8 
    UNION SELECT 9
   ) C
) divisor
WHERE
   dividend.x >= divisor.y AND
   divisor.y > 1
HAVING
   MOD(a, b) = 0
ORDER BY 1, 2
) prime
GROUP BY 1
HAVING COUNT(prime.a) = 1
) final; 

