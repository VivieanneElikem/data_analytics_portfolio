SELECT 
    `Product Name`,
    `Export Country`,
    ROUND(
        SUM(`Profit per unit` * `Units Sold`) * 100.0 
        / SUM(`Export Value`), 2
    ) AS profit_margin_percent
FROM nigeria_agricultural_exports
GROUP BY `Product Name`, `Export Country`
ORDER BY profit_margin_percent DESC;
