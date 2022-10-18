-- Join the two tables so that every column and record appears,
-- regardless of if there is not an owner_id.
SELECT *
 FROM owners AS o
  FULL OUTER JOIN vehicles AS v
   ON o.id = v.owner_id;


