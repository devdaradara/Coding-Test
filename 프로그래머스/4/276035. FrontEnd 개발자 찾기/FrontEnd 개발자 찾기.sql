-- 코드를 작성해주세요
WITH FRONT AS (
    SELECT SUM(CODE)
    FROM SKILLCODES 
    WHERE CATEGORY = "FRONT END"
)

SELECT ID,
    EMAIL,
    FIRST_NAME,
    LAST_NAME
FROM DEVELOPERS 
WHERE SKILL_CODE & (SELECT * FROM FRONT)
ORDER BY 1