DELETE FROM table_name
WHERE id NOT IN (
  SELECT id
  FROM (
    SELECT MIN(id) AS id
    FROM table_name
    GROUP BY name
    HAVING COUNT(*) > 1
    UNION ALL
    SELECT MIN(id)
    FROM table_name
    GROUP BY name
    HAVING COUNT(*) = 1
  ) AS unique_ids
);
