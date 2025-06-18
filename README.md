Project Title:
Railway Reservation System using Python and MySQL

1. Objective:
To develop a basic Command-Line Interface (CLI) based Railway Reservation System that facilitates ticket booking, cancellation, checking ticket status, and seat allocation.

2. Technologies Used:
Python

MySQL

MySQL Connector (Python Library)

3. Modules Implemented:
a) Ticket Booking:
Inputs: Number of passengers, travel date, source station, destination station, passenger names and genders.

Fetches the train number and distance from the rail_price_master table.

Calculates fare using a custom formula:
Fare = (50 + 2 × distance) × number_of_passengers

Generates a unique ticket number using the max from previous entries.

Inserts each passenger record into the rail_passenger table.

Displays the booked details.

b) Ticket Cancellation:
Input: Ticket number.

Fetches and displays ticket details for confirmation.

Deletes all records with the given ticket number from the rail_passenger table after user confirmation.

c) Ticket Status (My Status):
Input: Ticket number.

Displays journey details including train number, route, date, passenger count, names, coach, and seat numbers.

d) Seat Allocation:
Inputs: Train number and travel date.

Assigns confirmed seats in coaches S1, S2 (up to 20 passengers), and WL for waitlisted passengers.

Updates Pass_CoachCode, Pass_BerthNumber, and Pass_Confirm fields in the database.

e) Exit:
Cleanly exits the CLI program.
