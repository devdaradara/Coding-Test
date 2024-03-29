-- 코드를 입력하세요
WITH DONE_PRICE AS (SELECT WRITER_ID, SUM(PRICE) TOTAL_SALES
FROM USED_GOODS_BOARD 
WHERE STATUS = "DONE"
GROUP BY WRITER_ID)

SELECT USER_ID,
    NICKNAME,
    TOTAL_SALES
FROM DONE_PRICE P
    JOIN USED_GOODS_USER U ON P.WRITER_ID = U.USER_ID
WHERE TOTAL_SALES >= 700000
ORDER BY TOTAL_SALES