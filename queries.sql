-- Join the two tables so that every column and record appears,
-- regardless of if there is not an owner_id.
SELECT *
  FROM owners AS o
    FULL OUTER JOIN vehicles AS v
      ON o.id = v.owner_id;

-- Display the owners first_name and count of vehicles.
-- The first_name should be ordered in ascending order.

SELECT o.first_name, COUNT(v)
  FROM owners AS o
    INNER JOIN vehicles AS v
      ON o.id = v.owner_id
  GROUP BY o.first_name
  ORDER BY o.first_name;
