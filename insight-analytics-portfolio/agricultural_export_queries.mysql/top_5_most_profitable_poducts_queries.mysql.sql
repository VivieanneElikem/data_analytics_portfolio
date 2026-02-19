WITH base_data AS (
    SELECT
        `Product Name`,
        (`Profit per unit` * `Units Sold`) AS total_profit
    FROM nigeria_agricultural_exports
)

SELECT
    `Product Name`,
    SUM(total_profit) AS total_profit
FROM base_data
GROUP BY `Product Name`
ORDER BY total_profit DESC
LIMIT 5;
