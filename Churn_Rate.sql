USE SubscriptionProject;
SELECT
COUNT(*) AS Total_Users,
COUNT(churn_date) AS Churned_Users,
CAST(COUNT(churn_date) AS DECIMAL(5,2)) / COUNT(*) * 100 AS Churn_Rate_Percentage
FROM subscribers;