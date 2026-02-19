WITH base_data AS (
    SELECT
        `Export Country`,
        `Export Value`,
        (`Profit per unit` * `Units Sold`) AS total_profit
    FROM nigeria_agricultural_exports
)

SELECT
    `Export Country`,
    SUM(`Export Value`) AS total_revenue,
    SUM(total_profit) AS total_profit
FROM base_data
GROUP BY `Export Country`
ORDER BY total_profit DESC;
