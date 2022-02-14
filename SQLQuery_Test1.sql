SELECT C.name
  FROM Customers AS C
  LEFT JOIN Orders AS O 
  ON C.id = O.CustomerId
  WHERE O.id IS NULL;