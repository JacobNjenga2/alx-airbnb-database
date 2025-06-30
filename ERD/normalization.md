# Airbnb Database Normalization Report

## Objective
Ensure the database schema is normalized to Third Normal Form (3NF) to eliminate redundancy and improve data integrity.

---

## Step 1: First Normal Form (1NF)
All attributes contain atomic values, and there are no repeating groups in any table.

✅ Passed

---

## Step 2: Second Normal Form (2NF)
Each table has a single-column primary key (UUID), so all non-key attributes depend fully on the entire primary key.

✅ Passed

---

## Step 3: Third Normal Form (3NF)
No transitive dependencies were identified. All non-key attributes depend only on the primary key of their respective table.

✅ Passed

---

## Conclusion
The current Airbnb schema complies with 3NF. No redesign is necessary.
