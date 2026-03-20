USE SubscriptionProject;
INSERT INTO subscribers (first_name, last_name, signup_date, churn_date, subscription_type) VALUES ('Thabo','Mokoena','2023-01-01',NULL,'Premium'); -- Active
INSERT INTO subscribers (first_name, last_name, signup_date, churn_date, subscription_type) VALUES ('Sarah','Jones','2023-01-15','2023-03-15','Basic'); -- Churned
INSERT INTO subscribers (first_name, last_name, signup_date, churn_date, subscription_type) VALUES ('Kgotso','Molefe','2023-02-01',NULL,'Family'); -- Active
INSERT INTO subscribers (first_name, last_name, signup_date, churn_date, subscription_type) VALUES ('Lerato','Dlamini','2023-02-10','2023-04-10','Premium'); -- Churned
INSERT INTO subscribers (first_name, last_name, signup_date, churn_date, subscription_type) VALUES ('James','Wilson','2023-03-05',NULL,'Basic'); -- Active
INSERT INTO subscribers (first_name, last_name, signup_date, churn_date, subscription_type) VALUES ('Nompumelelo','Nkosi','2023-02-20','2023-05-20','Basic'); -- Churned
INSERT INTO subscribers (first_name, last_name, signup_date, churn_date, subscription_type) VALUES ('David','Brown','2023-04-01',NULL,'Premium'); -- Active
GO

INSERT INTO monthly_revenue (subscriber_id, revenue_date, amount) VALUES (1,'2023-01-01',200.00), (1,'2023-02-01',200.00),(1,'2023-03-01',200.00);
INSERT INTO monthly_revenue (subscriber_id, revenue_date, amount) VALUES (2,'2023-01-15',100.00),(2,'2023-02-15',100.00),(2,'2023-03-15',0.00); -- Churned
INSERT INTO monthly_revenue (subscriber_id, revenue_date, amount) VALUES (3,'2023-02-01',300.00),(3,'2023-03-01',300.00); 
INSERT INTO monthly_revenue (subscriber_id, revenue_date, amount) VALUES (4,'2023-02-10',200.00),(4,'2023-03-10',200.00),(4,'2023-04-10',0.00); -- Churned
INSERT INTO monthly_revenue (subscriber_id, revenue_date, amount) VALUES (5,'2023-03-05',100.00); 
INSERT INTO monthly_revenue (subscriber_id, revenue_date, amount) VALUES (6,'2023-02-20',100.00),(6,'2023-03-20',100.00),(6,'2023-04-20',0.00); -- Churned
INSERT INTO monthly_revenue (subscriber_id, revenue_date, amount) VALUES (7,'2023-04-01',200.00);
GO

INSERT INTO support_tickets (subscriber_id, ticket_date, category) VALUES (2,'2023-03-10','Technical'); -- Sarah logged a ticket before churning 
INSERT INTO support_tickets (subscriber_id, ticket_date, category) VALUES (4,'2023-04-01','Billing'); -- Lerato logged a ticket before churning 
INSERT INTO support_tickets (subscriber_id, ticket_date, category) VALUES (6,'2023-05-15','Content'); -- Nompumelelo logged a ticket before churning
INSERT INTO support_tickets (subscriber_id, ticket_date, category) VALUES (1,'2023-02-05','Technical'); -- Thabo logged a ticket but stayed
GO

