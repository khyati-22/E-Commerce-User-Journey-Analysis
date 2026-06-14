# E-Commerce User Journey Funnel Analysis

## Overview

This project analyzes customer behavior across an e-commerce platform to understand how users progress through the purchase journey and identify key drop-off points within the sales funnel.

The analysis focuses on customer interactions such as product views, wishlist additions, cart activity, and purchases. Using SQL and Power BI, the project evaluates user engagement, conversion performance, and cart abandonment trends to generate actionable business insights.

---

## Business Problem

E-commerce businesses often experience significant customer drop-offs before purchase completion.

This project aims to answer the following business questions:

- Where do users drop off in the conversion funnel?
- Which product categories generate the highest engagement?
- Which categories achieve the highest conversion rates?
- Which categories experience the highest cart abandonment?
- How does product pricing relate to conversion performance?
- Which products receive the highest customer attention?

---

## Project Objectives

- Analyze customer behavior across funnel stages
- Measure conversion performance across categories
- Identify high-performing and underperforming categories
- Evaluate cart abandonment trends
- Generate business recommendations based on data-driven insights

---

## Funnel Stages

```text
View
  ↓
Wishlist
  ↓
Cart
  ↓
Purchase
```

---

## Dataset Description

The project utilizes multiple e-commerce datasets:

### Events Dataset
Contains customer interactions with products.

Key Fields:
- Event ID
- User ID
- Product ID
- Event Type
- Event Timestamp

### Products Dataset
Contains product-related information.

Key Fields:
- Product ID
- Product Name
- Category
- Price
- Rating

### Additional Datasets Available
- Users Dataset
- Orders Dataset
- Order Items Dataset
- Reviews Dataset

---

## Tools & Technologies

- MySQL Workbench
- Power BI
- GitHub

---

## SQL Analysis Performed

### 1. Funnel Analysis

- Event Distribution
- Unique User Analysis
- Funnel Performance Tracking

### 2. Product Performance Analysis

- Top Viewed Products
- Top Purchased Products
- Product Engagement Analysis

### 3. Category Analysis

- Category-Level Views
- Category-Level Purchases
- Category Conversion Rates

### 4. Business KPI Analysis

- Conversion Rate
- Cart Abandonment Rate
- Purchase Distribution

---

## Key Findings

### 1. Clothing Generated the Highest Traffic

- Total Views: 6,023
- Conversion Rate: 6.76%

Although Clothing attracted the highest user attention, it recorded the lowest conversion rate among all categories.

---

### 2. Groceries Achieved the Highest Conversion Rate

- Conversion Rate: 7.58%

Users browsing grocery products demonstrated the strongest purchase intent.

---

### 3. Books Recorded the Highest Cart Abandonment

- Cart Abandonment Rate: 69.08%

A significant number of users added books to their carts but did not complete the purchase process.

---

### 4. Sports Products Had the Lowest Cart Abandonment

- Cart Abandonment Rate: 64.45%

Customers purchasing sports products showed stronger checkout completion behavior.

---

### 5. High Traffic Does Not Guarantee High Conversion

Categories with the highest views were not always the strongest performers in terms of purchases and conversion efficiency.

---

## Dashboard Overview

The Power BI dashboard includes:

### KPI Cards
- Total Users
- Total Events
- Total Carts
- Total Purchases

### Visualizations
- Funnel Analysis
- Event Distribution Analysis

### Business Insights
- Executive Summary
- Key Findings Section

---

## Repository Structure

```text
ecommerce-funnel-analysis/
│
├── Data/
│   ├── events.csv
│   ├── order_items.csv
│   ├── orders.csv
│   ├── products.csv
│   ├── reviews.csv
│   └── users.csv
│
├── Sql/
│   ├── README.md
│   └── funnel_analysis.sql
│
├── dashboard/
│   ├── Funnel Analysis.pbix
│   └── README.md
│
└── README.md
```

---

## Business Recommendations

Based on the analysis, the following actions are recommended:

1. Improve conversion performance within the Clothing category through better product information and promotional strategies.

2. Leverage high-performing categories such as Groceries and Sports through targeted marketing campaigns.

3. Implement cart recovery initiatives for categories with high abandonment rates, particularly Books and Clothing.

4. Monitor conversion metrics regularly to identify emerging customer behavior trends.

---

## Project Status

✅ Data Validation Completed

✅ SQL Analysis Completed

✅ Funnel Analysis Completed

✅ Category Performance Analysis Completed

✅ Conversion Rate Analysis Completed

✅ Cart Abandonment Analysis Completed

✅ Power BI Dashboard Completed

---

## Author

**Khyati Kukreja**

Khyati Kukreja
