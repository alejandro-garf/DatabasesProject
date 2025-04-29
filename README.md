# 🌐 Cybersecurity Threat and Breach Analysis - CPSC 332

## 📚 Project Overview

This project was completed for **CPSC 332 - File Structures and Databases** in Spring 2025.  
The goal was to expand the provided `world` database into a **cybersecurity-themed database** while meeting all course deliverables:

- Create an **ER diagram**.
- Add **3 additional tables** linked to the original schema.
- Populate all tables with **at least 20 rows**.
- Develop **20 original SQL queries** (10 JOINs and 10 Subqueries).
- Write a **detailed final report**.
- Present findings during a live demo session.

---

## 🏆 Deliverables and How We Completed Them

| Requirement | Our Approach |
|:---|:---|
| **ER Diagram** | We used MySQL Workbench to reverse engineer the updated schema. New tables and relationships were visually modeled and exported as a PNG. |
| **3 New Tables** | Added: `CyberThreats`, `DataBreachStats`, `CyberDefenseFunding`. All linked to `Country(Code)` with proper foreign keys. |
| **Populate Tables** | Inserted realistic cybersecurity data, with 20+ rows per new table, including real-world-like breaches, attacks, and defense funding. |
| **20 Queries** | Designed 10 JOIN queries and 10 SUBQUERY queries to analyze threat activity, breach patterns, and defense spending across countries. |
| **Final Report** | Submitted an APA-formatted Word document covering introduction, design process, query explanations, challenges, and lessons learned. |
| **Presentation** | Prepared a summary of the ER diagram, database development, and query findings to present to the class. |

---

## 🗂️ Project Files

| File | Description |
|:---|:---|
| `cybersecurity-schema.sql` | Full SQL script to create and populate new tables |
| `queries.sql` | 20 analytical SQL queries (JOINs and Subqueries) |
| `final-report.docx` | Full project write-up (APA format) |
| `final-schema-diagram.png` | ER diagram showing all relationships |
| `README.md` | Project documentation |

---

## 🏗️ Database Expansion Details

### New Tables Created

- **CyberThreats**
  - Tracks cyber attacks by country.
  - Includes threat type, severity, and report date.

- **DataBreachStats**
  - Lists major corporate breaches by country.
  - Includes company name, records leaked, and breach year.

- **CyberDefenseFunding**
  - Tracks national cybersecurity agency budgets.
  - Includes agency name, annual funding, and year.

All new tables reference the existing `Country(Code)` field.

### Data Population

Each new table was populated with at least 20 sample rows, ensuring realistic global cybersecurity scenarios:
- Threat types like ransomware and phishing.
- Breach examples such as Facebook, Alibaba, Aadhaar leaks.
- Funding data from national cybersecurity agencies like CISA and NCSC.

---

## 📈 Analytical Queries

We created and executed 20 original queries:

- **JOIN Queries (10):**
  - Explore relationships between countries, threats, breaches, and funding.
  
- **Subqueries (10):**
  - Perform deeper analysis such as identifying countries with severe threats but low funding.

Queries were designed to reflect real-world cybersecurity intelligence analysis.

---

## 🧠 Lessons Learned

- Dealing with character set mismatches (`utf8mb3`) when enforcing foreign key constraints.
- Structuring complex analytical queries using JOINs and Subqueries.
- The importance of database normalization and clean ER modeling.
- Real-world application of relational databases for cybersecurity analysis.

---

## 👥 Team Members

- [Insert Team Member Names Here]

---

## 📄 License

This project is part of coursework for **California State University, Fullerton - CPSC 332** and is intended for educational use only.

---
