# SQL-EXERCISE
A structured repository containing essential SQL problem sets and comprehensive solutions covering database operations, data transformation, string manipulation, and conditional formatting using MySQL syntax.

# SQL Basics & Data Transformation Exercises 🏏📊

This repository contains structured SQL query assignments alongside their functional execution scripts. The collection focuses on core database management fundamentals, relational operations, missing value imputation, string patterns, and analytical sorting.

## 🗂️ Datasets Covered
The exercises query across multiple simulated operational data structures:
* **`cricket_1` & `cricket_2`**: Historical datasets tracking test matches, player statistics (`Player_Id`, `Player_Name`), and running metrics.
* **`cric_combined`**: Relational tables evaluating advanced performance tracking metrics like popularity ratings and charisma metrics.
* **`new_cricket`**: Master player rosters handling missing or corrupt data entries.
* **`churn1`**: Telecom client data monitoring attributes such as `customerID`, `InternetConnection`, `gender`, and account `tenure`.

## 🛠️ Core SQL Concepts Demonstrated

The solution files break down critical query mechanisms including:

1. **Set Operations**: Utilizing `UNION` and `INTERSECT` to identify unique and overlapping data items across separate match structures.
2. **Conditional Math & Imputation**: Employing structural replacements like `IFNULL(Charisma, 0)` and dynamic ratio column generation (`PC_Ratio` derived from popularity-to-charisma metrics).
3. **Advanced Filtering & Pattern Matching**: 
   * Implementing string wildcard lookups (`LIKE 'Y%v'` and pattern indexes like `LIKE '_i%'`).
   * Ranged numerical filtering using `BETWEEN ... AND ...`.
4. **Data Formatting & Sorting**: Using `UPPER()` for casing modifications combined with multi-column hierarchical `ORDER BY` execution.

## 📁 Repository Structure

```text
├── SQL1_Exercise_File_1.sql            # Questions and problem statements
├── SQL1_Exercise_File_1_Execution.sql  # Database creation and verified execution queries
└── README.md                           # Documentation
