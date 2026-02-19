WITH company_revenue AS (
    SELECT
        `Company`,
        SUM(`Export Value`) AS revenue
    FROM nigeria_agricultural_exports
    GROUP BY `Company`
)

SELECT
    `Company`,
    revenue,
    ROUND(
        revenue * 100.0 /
        (SELECT SUM(revenue) FROM company_revenue),
        2
    ) AS market_share_percent
FROM company_revenue
ORDER BY market_share_percent DESC;
