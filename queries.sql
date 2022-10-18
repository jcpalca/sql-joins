-- Join the two tables so that every column and record appears,
-- regardless of if there is not an owner_id.

SELECT *
  FROM owners AS o
    FULL OUTER JOIN vehicles AS v
      ON o.id = v.owner_id;

-- Display the owners first_name and count of vehicles.
-- The first_name should be ordered in ascending order.

SELECT o.first_name, COUNT(*)
  FROM owners AS o
    INNER JOIN vehicles AS v
      ON o.id = v.owner_id
  GROUP BY o.id
  ORDER BY o.first_name;

-- Display the owners first_name, average price, and count of vehicles.
-- The first_name should be ordered in descending order.
-- Only display results with more than one vehicle
-- and an average price greater than 10000.

SELECT o.first_name,
       ROUND(AVG(v.price)) AS average_price,
       COUNT(v)
  FROM owners AS o
    JOIN vehicles AS v
      ON o.id = v.owner_id
  GROUP BY o.id
  HAVING ROUND(AVG(v.price)) > 10000
         AND COUNT(v) > 1
  ORDER BY o.first_name DESC;
