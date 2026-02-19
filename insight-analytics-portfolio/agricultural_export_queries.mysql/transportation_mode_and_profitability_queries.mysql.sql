SELECT 
    `Transportation Mode`,
    SUM(`Export Value`) AS total_revenue,
    SUM(`Profit per unit` * `Units Sold`) AS total_profit,
    ROUND(
        SUM(`Profit per unit` * `Units Sold`) * 100.0
        / SUM(`Export Value`), 2
    ) AS profit_margin_percent
FROM nigeria_agricultural_exports
GROUP BY `Transportation Mode`
ORDER BY profit_margin_percent DESC;
