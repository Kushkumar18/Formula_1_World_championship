# 🏎️ Formula 1 World Championship Database

## 📌 Overview
This project is a relational database designed to store and manage information about Formula 1 World Championship teams, drivers, races, and results.  
It demonstrates **SQL schema design**, **data insertion**, and **complex queries** for sports analytics.

---

## 📂 Database Schema
**Tables:**
- `team` – Stores team details like name, debut year, and principal.
- `driver` – Stores driver information, nationality, and associated team.
- `race` – Stores race details including location, date, and track.
- `result` – Stores finishing positions and points for each driver in a race.

---

## 🛠 Features
- **Primary & Foreign Keys** for data integrity.
- **Unique Constraints** to avoid duplicate entries.
- **Joins** to combine data across tables.
- **Aggregate Functions** to calculate total points, wins, etc.

---

## 🏗️ Example Table Creation
```sql
CREATE TABLE team (
    TID INT PRIMARY KEY,
    Name VARCHAR(50) UNIQUE,
    Debut_year INT,
    Team_Principal VARCHAR(30),
    No_of_Wins INT
);
