USE T7_PROJECT;

SELECT * FROM T7_CUSTOMER WHERE T7_Cust_Id IN
(SELECT T7_Cust_Id FROM
(SELECT C.*, P.T7_Premium_Payment_Amount FROM T7_CUSTOMER C
INNER JOIN T7_PREMIUM_PAYMENT P
ON C.T7_Cust_Id = P.T7_Cust_Id 
HAVING P.T7_Premium_Payment_Amount > (SELECT SUM(C.T7_Cust_Id) FROM T7_CUSTOMER C)) AS T);