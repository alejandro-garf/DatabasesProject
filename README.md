# 🌐 Cybersecurity Threat and Breach Analysis Project

## 📚 Overview

This project is a cybersecurity-focused expansion of the classic `world` database, created for **CPSC 332 - Spring 2025**.  
We designed and implemented a database extension that tracks:

- Cybersecurity threats reported by each country
- Major corporate data breaches
- National cybersecurity defense budgets

We then created 20 complex SQL queries (10 JOINs and 10 subqueries) to analyze threat levels, breach patterns, and government spending.

---

## 🏗️ Project Structure

| File | Description |
|:---|:---|
| `cybersecurity-schema.sql` | Full SQL file including table creation and sample data insertion |
| `queries.sql` | SQL file containing 20 analytical queries |
| `final-report.docx` | Full final report in APA style |
| `final-schema-diagram.png` | ER Diagram exported from MySQL Workbench |
| `README.md` | This documentation file |

---

## 🧱 Database Design

We expanded the `world` schema by adding 3 new tables:

- **CyberThreats**
- **DataBreachStats**
- **CyberDefenseFunding**

Each new table references the existing `Country(Code)` field, ensuring relational integrity.

> Character set: `utf8mb3`  
> Storage engine: `InnoDB`

---

## 🗂️ How to Set Up

1. **Import the Base Database**
   - Import the original `world` database (`world-mysql-creation-file.sql`) into your MySQL server.

2. **Run the Cybersecurity Schema**
   - Open `cybersecurity-schema.sql` in MySQL Workbench.
   - Execute the script to create the new tables and populate them with sample data.

3. **Run the Analytical Queries**
   - Open `queries.sql` to explore global cybersecurity patterns.

---

## 🖼️ ER Diagram

![Final Schema Diagram](final-schema-diagram.png)

- Shows new relationships between `Country` and cybersecurity-specific tables.

---

## 🧠 Project Highlights

- Identified countries with highest cyber threat levels.
- Analyzed which nations have insufficient cybersecurity defense funding.
- Correlated data breach incidents with country demographics.
- Demonstrated relational database design best practices for cybersecurity data.

---

## ✨ Key Technologies

- **MySQL 8.0+**
- **MySQL Workbench**
- **SQL**
- **GitHub**
- **Markdown Documentation**

---

## 👥 Team Members

- [Insert Your Team Names Here]

---

## 📄 License

This project is for educational purposes under **California State University, Fullerton CPSC 332** course guidelines.

---
