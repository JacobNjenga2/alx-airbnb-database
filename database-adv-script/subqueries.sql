-- Query 1 — Non-Correlated Subquery:Find all properties where average rating > 4.0:
SELECT
    p.property_id,
    p.name,
    p.location
FROM
    Property p
WHERE
    p.property_id IN (
        SELECT
            r.property_id
        FROM
            Review r
        GROUP BY
            r.property_id
        HAVING
            AVG(r.rating) > 4.0
    )
ORDER BY
    p.property_id;

-- Query 2 — Correlated Subquery: Find users who have made more than 3 bookings:

SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    u.email
FROM
    User u
WHERE (
    SELECT
        COUNT(*)
    FROM
        Booking b
    WHERE
        b.user_id = u.user_id
) > 3
ORDER BY
    u.user_id;
