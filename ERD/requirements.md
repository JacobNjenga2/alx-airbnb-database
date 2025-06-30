# Airbnb ER Diagram Requirements

## Entities
- **User**: Stores user information including name, email, role, etc.
- **Property**: Linked to host (user). Contains name, description, location, price, etc.
- **Booking**: Links user (guest) and property. Includes dates and status.
- **Payment**: Associated with a booking. Includes amount, date, and method.
- **Review**: Linked to both property and user. Includes rating and comment.
- **Message**: User-to-user communication. Sender and recipient fields.

## Relationships
- A **User** can host many **Properties**.
- A **User** can book many **Properties** through **Bookings**.
- A **Property** can have many **Bookings** and **Reviews**.
- A **Booking** can have one **Payment**.
- A **User** can write many **Reviews**.
- A **User** can send and receive **Messages**.

## ERD File
See the visual ERD here: `ERD/airbnb_ERD.png`
