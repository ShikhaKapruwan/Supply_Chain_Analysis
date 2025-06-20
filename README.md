# Supply Chain Performance Analysis

📦 *Optimizing Inventory and Product Movement Using Excel, SQL, and Power BI*

## 📌 Overview

This project aims to explore and optimize supply chain performance by analyzing key metrics like inventory turnover, stock classification (ABC analysis), product risk levels, and overall efficiency. Using Excel for data cleaning, SQL for querying, and Power BI for dashboarding, the project showcases how data-driven insights can improve stock management, reduce wastage, and boost product availability.

## 🎯 Project Objective

- Identify fast-moving and slow-moving products.
- Classify products using *ABC Analysis* to prioritize inventory control.
- Detect low-stock risks for high-priority (A) products.
- Improve supply chain efficiency by calculating and visualizing *Inventory Turnover*.
- Provide actionable insights using interactive Power BI dashboards.

## 📊 Dataset Used

- The dataset contains SKU-level information, stock quantity, sales performance, lead time, product classification, and inspection results.
- Tools used: Excel, SQL (MySQL), Power BI

## 🔄 Workflow Overview

### 1. Excel – Data Cleaning & Preparation
- Cleaned raw data to remove blanks and duplicates.
- Standardized column headers for SQL compatibility.
- Used *Text to Columns* to fix date formatting issues.
- Removed columns like Product Name if they caused import issues.
- Added calculated fields such as:
  - *Revenue per Item* = Avg Daily Sales × Price

### 2. SQL – Data Analysis
Performed the following key queries:
- *ABC Classification* using cumulative revenue %:
  - A: Top 70%
  - B: 70–90%
  - C: Bottom 10%
- *At-Risk A Products*: A-class SKUs with critically low stock.
- *Inventory Turnover Ratio*: Total sales ÷ Average Inventory
- *Top 10 Fast-Moving Products* based on inventory turnover.
- Stored clean output tables for Power BI visualization.

### 3. Power BI – Interactive Dashboard

Dashboard Highlights:
- 📌 *KPIs*: Total SKUs, % A-class Products, Low Stock Count
- 📦 *Revenue Distribution by ABC Category*
- 🔴 *Risk Indicator Cards* for low-stock A-class SKUs
- 📈 *Top Fast-Moving Products*
- 🔄 *Inventory Turnover by Product*
- 📍 Slicers and filters for dynamic drill-down by category, SKU, or turnover

  ## Dashboard
[  https://github.com/ShikhaKapruwan/Supply_Chain_Analysis/blob/main/supply_chain_dashboard.png](https://github.com/ShikhaKapruwan/Supply_Chain_Analysis/blob/main/supply_chain_dashboard.png)

## 📌 Key Insights

- A-class products contribute ~70% of revenue, but many are at low stock levels.
- Several C-class items are overstocked, indicating a need for rebalancing.
- Certain SKUs show low turnover, signaling inefficiency in inventory holding.
- Improved visibility into fast movers helps prioritize procurement decisions.

## ✅ Recommendations

- *Replenish A-class stock* proactively to avoid sales loss.
- *Reduce overstock of C-class items* to free up working capital.
- *Monitor and improve turnover ratios* for underperforming SKUs.
- *Adopt demand-based replenishment strategies* based on ABC classification.
- *Use inspection result insights* to align quality control with supply strategy.

## 📁 Files in this Repository

- SupplyChain_Dataset_Cleaned.xlsx – Cleaned and structured dataset
- SupplyChain_Dashboard.pbix – Power BI Dashboard file
- README.md – Project documentation (this file)

## 💡 Skills Highlighted

- Data Cleaning (Excel)
- SQL Querying for Business Insights
- Data Visualization (Power BI)
- Inventory Optimization
- Supply Chain KPI Analysis


