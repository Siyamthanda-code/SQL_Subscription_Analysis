USE SubscriptionProject;
SELECT
s.first_name,
s.last_name,
s.churn_date, -- If this is NULL, they are active. If it has a date, they late.
st.category AS Ticket_Category
FROM subscribers s
JOIN support_tickets st ON s.subscriber_id = st.subscriber_id;