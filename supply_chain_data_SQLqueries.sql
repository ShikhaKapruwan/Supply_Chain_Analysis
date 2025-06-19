
-- Top 10 Products with lowest days of inventory
SELECT product_type, sku, stock_levels, days_of_inventory, avg_daily_sales,inventory_status, safety_Stock, inventory_turnover_ratio
FROM supply_chain_data
ORDER BY days_of_inventory ASC
LIMIT 10;

-- Items with current stock<Safety Stock
SELECT product_type, sku, stock_levels, safety_Stock, days_of_inventory, avg_daily_sales, inventory_status
FROM supply_chain_data
WHERE stock_levels<safety_Stock;

-- Revenue lost if we run out of A products
SELECT SUM(revenue_generated) 
FROM supply_chain_data
WHERE abc_analysis= 'A' AND stock_levels<safety_Stock;

-- Which products are at Urgent Reorder level
SELECT product_type, sku, stock_levels, safety_Stock, days_of_inventory, avg_daily_sales, inventory_status
FROM supply_chain_data
WHERE days_of_inventory<7 AND stock_levels<safety_Stock;

-- TOP 10 fast-selling items
SELECT product_type, sku, inventory_turnover_ratio, stock_levels, days_of_inventory
FROM supply_chain_data
ORDER BY inventory_turnover_ratio DESC
LIMIT 10;

-- Product demand vs Stock Available
SELECT product_type, sku, avg_daily_sales, stock_levels, days_of_inventory, safety_Stock
FROM supply_chain_data
ORDER BY avg_daily_sales DESC;

-- Product category wise stock risk
SELECT product_type, COUNT(*) AS risky_products
FROM supply_chain_data
WHERE stock_levels<safety_Stock
group by product_type;

-- ABC Class-wise revenue contribution
SELECT abc_analysis, round(SUM(revenue_per_item*products_sold),2) AS total_revenue
FROM supply_chain_data
GROUP BY abc_analysis;

-- Number of 'A' Products at Risk
SELECT abc_analysis, COUNT(*)
FROM supply_chain_data
WHERE abc_analysis= 'A' AND stock_levels<safety_Stock
GROUP BY abc_analysis
;

