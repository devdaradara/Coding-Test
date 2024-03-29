-- 코드를 입력하세요
SELECT O.PRODUCT_ID,
    PRODUCT_NAME,
    SUM(PRICE * AMOUNT) AS TOTAL_SALES
FROM FOOD_ORDER O
    JOIN FOOD_PRODUCT P ON O.PRODUCT_ID = P.PRODUCT_ID
WHERE DATE_FORMAT(PRODUCE_DATE, "%Y-%m") = "2022-05"
GROUP BY O.PRODUCT_ID
ORDER BY 3 DESC, 1