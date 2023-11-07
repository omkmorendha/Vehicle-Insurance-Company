USE T7_PROJECT;

SELECT T7_Vehicle_Id FROM T7_VEHICLE V
INNER JOIN T7_PREMIUM_PAYMENT P
ON V.T7_Policy_Number = P.T7_Policy_Number
WHERE P.T7_Premium_Payment_Amount > V.T7_Vehicle_Number;
