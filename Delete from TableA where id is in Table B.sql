DELETE FROM Table A
WHERE id IN (
    SELECT id
    FROM Table B
);
