WITH agricultural_export_project AS (
    SELECT
        `Product Name`,
        `Company`,
        `Export Country`,
        `Destination Port`,
        `Transportation Mode`,
        `Date`,
        `Units Sold`,
        `unit_price`,
        `Export Value`,
        (`Profit per unit` * `Units Sold`) AS total_profit
    FROM nigeria_agricultural_exports
)

SELECT *
FROM agricultural_export_project;



