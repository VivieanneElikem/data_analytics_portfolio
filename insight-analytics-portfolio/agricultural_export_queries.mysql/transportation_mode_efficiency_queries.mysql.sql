WITH base_data AS (
    SELECT
        `Transportation Mode`,
        `Export Value`,
        (`Profit per unit` * `Units Sold`) AS total_profit
    FROM nigeria_agricultural_exports
)

SELECT
    `Transportation Mode`,
    SUM(`Export Value`) AS revenue,
    SUM(total_profit) AS profit,
    ROUND(SUM(total_profit) * 100.0 / SUM(`Export Value`), 2) AS margin_percent
FROM base_data
GROUP BY `Transportation Mode`
ORDER BY margin_percent DESC;
