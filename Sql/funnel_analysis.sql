/*
=========================================================
E-COMMERCE USER JOURNEY FUNNEL ANALYSIS
Author: Khyati Kukreja
Tools: MySQL, Excel, Power BI
=========================================================
*/


-- =====================================================
-- 1. EVENT DISTRIBUTION
-- Purpose: Understand overall user activity distribution
-- =====================================================

SELECT
    event_type,
    COUNT(*) AS total_events
FROM events
GROUP BY event_type
ORDER BY total_events DESC;



-- =====================================================
-- 2. UNIQUE USERS
-- Purpose: Calculate total distinct users
-- =====================================================

SELECT
    COUNT(DISTINCT user_id) AS unique_users
FROM events;



-- =====================================================
-- 3. TOP VIEWED PRODUCTS
-- Purpose: Identify products attracting the most attention
-- =====================================================

SELECT
    p.product_name,
    p.category,
    COUNT(*) AS views
FROM events e
JOIN products p
ON e.product_id = p.product_id
WHERE e.event_type = 'view'
GROUP BY p.product_name, p.category
ORDER BY views DESC
LIMIT 10;



-- =====================================================
-- 4. CATEGORY VIEWS
-- Purpose: Identify categories receiving maximum traffic
-- =====================================================

SELECT
    p.category,
    COUNT(*) AS total_views
FROM events e
JOIN products p
ON e.product_id = p.product_id
WHERE e.event_type = 'view'
GROUP BY p.category
ORDER BY total_views DESC;



-- =====================================================
-- 5. CATEGORY PURCHASES
-- Purpose: Identify categories generating most purchases
-- =====================================================

SELECT
    p.category,
    COUNT(*) AS purchases
FROM events e
JOIN products p
ON e.product_id = p.product_id
WHERE e.event_type = 'purchase'
GROUP BY p.category
ORDER BY purchases DESC;



-- =====================================================
-- 6. CATEGORY CONVERSION RATE
-- Purpose: Compare views against purchases
-- KPI: Conversion Rate
-- =====================================================

SELECT
    p.category,
    SUM(CASE WHEN e.event_type = 'view' THEN 1 ELSE 0 END) AS views,
    SUM(CASE WHEN e.event_type = 'purchase' THEN 1 ELSE 0 END) AS purchases,
    ROUND(
        SUM(CASE WHEN e.event_type = 'purchase' THEN 1 ELSE 0 END) * 100.0 /
        SUM(CASE WHEN e.event_type = 'view' THEN 1 ELSE 0 END),
        2
    ) AS conversion_rate
FROM events e
JOIN products p
ON e.product_id = p.product_id
GROUP BY p.category
ORDER BY conversion_rate DESC;



-- =====================================================
-- 7. PRICE & RATING ANALYSIS
-- Purpose: Compare average product price and ratings
-- across categories
-- =====================================================

SELECT
    p.category,
    ROUND(AVG(p.price),2) AS avg_price,
    ROUND(AVG(p.rating),2) AS avg_rating
FROM products p
GROUP BY p.category
ORDER BY avg_price DESC;



-- =====================================================
-- 8. CART ABANDONMENT ANALYSIS
-- Purpose: Measure drop-offs between cart and purchase
-- KPI: Cart Abandonment Rate
-- =====================================================

SELECT
    p.category,
    SUM(CASE WHEN e.event_type = 'cart' THEN 1 ELSE 0 END) AS carts,
    SUM(CASE WHEN e.event_type = 'purchase' THEN 1 ELSE 0 END) AS purchases,
    ROUND(
        (1 - SUM(CASE WHEN e.event_type = 'purchase' THEN 1 ELSE 0 END) * 1.0 /
        SUM(CASE WHEN e.event_type = 'cart' THEN 1 ELSE 0 END)) * 100,
        2
    ) AS cart_abandonment_rate
FROM events e
JOIN products p
ON e.product_id = p.product_id
WHERE e.event_type IN ('cart','purchase')
GROUP BY p.category
ORDER BY cart_abandonment_rate DESC;



-- =====================================================
-- 9. USER DISTRIBUTION BY CITY
-- Purpose: Understand geographic user distribution
-- =====================================================

SELECT
    city,
    COUNT(*) AS total_users
FROM users
GROUP BY city
ORDER BY total_users DESC;



-- =====================================================
-- 10. USER DISTRIBUTION BY GENDER
-- Purpose: Analyze demographic composition
-- =====================================================

SELECT
    gender,
    COUNT(*) AS total_users
FROM users
GROUP BY gender;



-- =====================================================
-- 11. TOP 5 CITIES BY PURCHASES
-- Purpose: Identify highest-performing locations
-- =====================================================

SELECT
    u.city,
    COUNT(*) AS purchases
FROM events e
JOIN users u
ON e.user_id = u.user_id
WHERE e.event_type = 'purchase'
GROUP BY u.city
ORDER BY purchases DESC
LIMIT 5;



-- =====================================================
-- 12. PURCHASES BY GENDER
-- Purpose: Compare purchasing behavior across genders
-- =====================================================

SELECT
    u.gender,
    COUNT(*) AS purchases
FROM events e
JOIN users u
ON e.user_id = u.user_id
WHERE e.event_type = 'purchase'
GROUP BY u.gender
ORDER BY purchases DESC;
