-- 코드를 입력하세요
WITH SUM_TOTAL AS (
    SELECT FLAVOR, SUM(TOTAL_ORDER) STO
    FROM FIRST_HALF
    GROUP BY FLAVOR
)

SELECT T.FLAVOR
FROM JULY J
    JOIN SUM_TOTAL T ON T.FLAVOR = J.FLAVOR
GROUP BY FLAVOR
ORDER BY STO + SUM(TOTAL_ORDER) DESC
LIMIT 3