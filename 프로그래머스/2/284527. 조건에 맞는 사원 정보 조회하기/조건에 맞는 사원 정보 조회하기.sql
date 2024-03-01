-- 코드를 작성해주세요

WITH BEST_EMP AS (
    SELECT EMP_NO, SUM(SCORE) SCORE
    FROM HR_GRADE
    GROUP BY EMP_NO
    ORDER BY 2 DESC
    LIMIT 1
)

SELECT SCORE,
    B.EMP_NO,
    EMP_NAME,
    POSITION,
    EMAIL
FROM BEST_EMP B
    LEFT JOIN HR_EMPLOYEES H ON B.EMP_NO = H.EMP_NO
