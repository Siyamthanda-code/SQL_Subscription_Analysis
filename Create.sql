USE SubscriptionProject;
CREATE TABLE subscribers(
subscriber_id INT IDENTITY(1,1) PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
signup_date DATE,
churn_date DATE, -- if NULL, they are still active
subscription_type VARCHAR(20) -- 'Basic','Premium','Family'
);

CREATE TABLE monthly_revenue(
id INT IDENTITY(1,1) PRIMARY KEY,
subscriber_id INT,
revenue_date DATE,
amount DECIMAL(10, 2),
FOREIGN KEY (subscriber_id) REFERENCES subscribers(subscriber_id)
);

CREATE TABLE support_tickets(
ticket_id INT IDENTITY(1,1) PRIMARY KEY,
subscriber_id INT,
ticket_date DATE,
category VARCHAR(50), -- 'Billing','Technical','Content'
FOREIGN KEY (subscriber_id) REFERENCES subscribers(subscriber_id)
);