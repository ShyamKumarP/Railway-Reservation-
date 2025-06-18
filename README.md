# Railway Reservation System using Python and MySQL

## Objective
To develop a command-line based Railway Reservation System that facilitates ticket booking, cancellation, checking ticket status, and seat allocation using a structured MySQL database backend.

---

## Technologies Used
- Python  
- MySQL  
- MySQL Connector (Python Library)

---

## Features / Modules

### 1. Booking Ticket
- Input: Number of passengers, travel date, source and destination stations, passenger details.
- Retrieves train number and distance from `rail_price_master`.
- Calculates fare using the formula:  
  `Fare = (50 + 2 × distance) × number_of_passengers`
- Auto-generates a unique ticket number.
- Inserts passenger records into the `rail_passenger` table.
- Displays booking details and total fare.

### 2. Cancellation
- Input: Ticket number.
- Displays the details associated with the ticket.
- Deletes records from the `rail_passenger` table after confirmation.

### 3. My Status
- Input: Ticket number.
- Displays:
  - Train number
  - From and To stations
  - Journey date
  - Number of passengers
  - Passenger names, genders, coach, and seat numbers

### 4. Seat Allocation
- Input: Train number and travel date.
- Confirms and assigns seats to passengers:
  - S1 Coach: First 10 passengers
  - S2 Coach: Next 10 passengers
  - WL (Waitlist): Remaining passengers
- Updates the passenger record with coach and berth number.

### 5. Exit
- Gracefully exits the program.

---

## Database Schema

### Table: `rail_passenger`
Stores individual passenger details.

| Field              | Description            |
|-------------------|------------------------|
| pass_srno         | Serial number          |
| pass_srname       | Passenger name         |
| pass_gender       | Gender (M/F)           |
| pass_fromstation  | Boarding station       |
| pass_tostation    | Destination station    |
| pass_trainnumber  | Train number           |
| pass_ticketnumber | Ticket number          |
| pass_berthnumber  | Seat number            |
| pass_confirm      | Confirmation status    |
| pass_fare         | Calculated fare        |
| pass_journeydate  | Date of journey        |
| pass_entrydate    | Timestamp of booking   |
| pass_coachcode    | Coach (S1, S2, WL)     |

---

### Table: `rail_price_master`
Stores fare and distance between station pairs.

| Field               | Description            |
|--------------------|------------------------|
| price_train_number | Train number           |
| price_from_station | From station           |
| price_to_station   | To station             |
| price_fare         | Base fare (unused)     |
| price_distance     | Distance in KM         |
| price_pk           | Primary key            |

---

## Future Scope
- Implement user login and role-based access (Admin/Passenger).
- Convert CLI interface to GUI (Tkinter) or Web App (Flask/Django).
- Real-time seat availability and dynamic scheduling.
- Class-based pricing and flexible fare calculation.
- Integration with email or SMS services for ticket confirmation.
- Admin dashboard for analytics, passenger records, and train management.

---

## How to Run
1. Ensure MySQL server is running and the database `rail_db` is created.
2. Import the required tables and insert initial records as per schema.
3. Install Python and `mysql-connector-python` package:
   ```bash
   pip install mysql-connector-python
