# Airbnb Clone Database Schema

## Overview

This SQL script defines the core schema for the Airbnb Clone project. It includes the main entities and their relationships as per the project specification.

## Entities

- **User**: Stores user details with roles such as guest, host, and admin.
- **Property**: Represents properties listed by hosts.
- **Booking**: Tracks reservations made by guests.
- **Payment**: Handles payment details for bookings.
- **Review**: Allows users to rate and comment on properties.
- **Message**: Supports internal communication between users.

## Notes

- UUIDs are used as primary keys.
- ENUMs are used to define fixed roles and statuses.
- Proper indexing is implemented for optimized lookup.
- Foreign key constraints ensure data integrity.
