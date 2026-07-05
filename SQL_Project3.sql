-- =======================================================
-- DECODELABS INDUSTRIAL TRAINING KIT - BATCH 2026
-- DATA ANALYTICS PROJECT 3: SQL DATA ANALYSIS
-- FILE: SQL_Data_Analysis_Project3.sql
-- =======================================================

-- TASK 1: Find out which products are best-sellers by counting transactions.
SELECT 
    Product, 
    COUNT(OrderID) AS TotalOrders
FROM 
    ecommerce_sales
GROUP BY 
    Product
ORDER BY 
    TotalOrders DESC;

-- TASK 2: Calculate total revenue and average order value per payment method.
SELECT 
    PaymentMethod, 
    SUM(TotalPrice) AS TotalRevenue,
    AVG(TotalPrice) AS AverageOrderValue
FROM 
    ecommerce_sales
GROUP BY 
    PaymentMethod;

-- TASK 3: Analyze performance of marketing channels when coupon codes are used.
SELECT 
    ReferralSource, 
    SUM(TotalPrice) AS RevenueWithCoupons
FROM 
    ecommerce_sales
WHERE 
    CouponCode != 'No coupon'
GROUP BY 
    ReferralSource
ORDER BY 
    RevenueWithCoupons DESC;