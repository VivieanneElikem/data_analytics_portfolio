SELECT 
    `Company`,
    SUM(`Export Value`) AS company_revenue,
    ROUND(
        SUM(`Export Value`) * 100.0 /
        (SELECT SUM(`Export Value`) FROM (nigeria_agricultural_exports)
        ),
        2
    ) AS market_share_percent
FROM nigeria_agricultural_exports
GROUP BY `Company`
ORDER BY market_share_percent DESC;
