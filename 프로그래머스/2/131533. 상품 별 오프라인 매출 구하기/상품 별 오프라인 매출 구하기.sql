SELECT PRODUCT_CODE, PRICE * SUM(SALES_AMOUNT) AS SALES
FROM PRODUCT JOIN OFFLINE_SALE
WHERE PRODUCT.PRODUCT_ID = OFFLINE_SALE.PRODUCT_ID
GROUP BY PRODUCT.PRODUCT_ID
ORDER BY SALES DESC,PRODUCT_CODE