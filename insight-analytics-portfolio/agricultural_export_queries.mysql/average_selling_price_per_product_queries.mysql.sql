SELECT 
    `Product Name`,
    ROUND(AVG(`unit_price`), 2) AS avg_unit_price
FROM nigeria_agricultural_exports
GROUP BY `Product Name`
ORDER BY avg_unit_price DESC;
