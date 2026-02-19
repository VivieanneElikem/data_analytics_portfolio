SELECT 
    `product name`,
    SUM(`export value`) AS total_revenue,
    SUM(`profit per unit` * `units sold`) AS total_profit,
    ROUND(
        SUM(`profit per unit` * `units sold`) * 100.0 
        / SUM(`export value`), 2
    ) AS profit_margin_percent
FROM nigeria_agricultural_exports
GROUP BY `product name`
ORDER BY total_profit DESC;

