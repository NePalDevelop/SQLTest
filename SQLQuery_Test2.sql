SELECT name
  FROM Customers
EXCEPT    
SELECT C.name
  FROM Customers AS C
  INNER JOIN Orders AS O 
  ON C.id = O.CustomerId
  