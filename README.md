# 🏗️ SQL Data Warehouse & Analytics Project

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![T-SQL](https://img.shields.io/badge/T--SQL-0078D4?style=for-the-badge&logo=microsoft&logoColor=white)
![ETL](https://img.shields.io/badge/ETL-Pipeline-blue?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

An end-to-end **SQL Server Data Warehouse** built using the **Medallion Architecture (Bronze → Silver → Gold)**. This project demonstrates the complete data engineering workflow—from ingesting raw CRM and ERP data to building a clean, analytics-ready **Star Schema** for business intelligence and reporting.

---

# 📖 Project Overview

This project includes:

- Designing a modern SQL Server data warehouse
- Building ETL pipelines using T-SQL
- Integrating CRM and ERP data sources
- Cleaning, transforming, and validating data
- Creating fact and dimension tables using a Star Schema
- Preparing business-ready data for reporting and analytics

---

# 🏛️ Data Architecture

The warehouse follows the **Medallion Architecture**, separating raw, transformed, and business-ready data into three layers.

![Data Architecture](docs/data_architecture.png)

| Layer | Purpose |
|--------|---------|
| 🥉 Bronze | Load raw CRM and ERP data without transformations |
| 🥈 Silver | Clean, standardize, validate, and transform data |
| 🥇 Gold | Star Schema optimized for reporting and analytics |

---

# ⭐ Data Model

The Gold layer is modeled as a **Star Schema**.

![Data Model](docs/data_model.png)

| Table | Type | Description |
|--------|------|-------------|
| `fact_sales` | Fact | Sales transactions and business metrics |
| `dim_customers` | Dimension | Customer information |
| `dim_products` | Dimension | Product details and hierarchy |

---

# 📂 Repository Structure

```text
sql_data_warehouse_project/
│
├── datasets/              # Source CRM & ERP datasets
│
├── docs/                  # Documentation and diagrams
│   ├── data_architecture.png
│   ├── data_model.png
│   ├── data_flow.drawio
│   └── data_catalog.md
│
├── scripts/
│   ├── bronze/            # Raw data ingestion
│   ├── silver/            # Data cleaning & transformations
│   └── gold/              # Star schema creation
│
├── tests/
│   └── quality_checks.sql
│
├── README.md
├── LICENSE
└── .gitignore
```

---

# 🛠️ Tech Stack

| Category | Technology |
|-----------|------------|
| Database | Microsoft SQL Server |
| Language | T-SQL |
| Architecture | Medallion Architecture |
| Data Modeling | Star Schema |
| ETL | SQL Stored Procedures |
| Source Data | CRM & ERP CSV Files |

---

# 🚀 Getting Started

### Prerequisites

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)

### Clone the Repository

```bash
git clone https://github.com/BhumikaAggwl/sql_data_warehouse_project.git

cd sql_data_warehouse_project
```

### Execute the SQL Scripts

Run the scripts in the following order:

```text
1. Bronze Layer
2. Silver Layer
3. Gold Layer
4. Data Quality Tests
```

---

# ✅ Features

- End-to-end ETL Pipeline
- Bronze → Silver → Gold architecture
- Data Cleansing & Standardization
- Star Schema Data Modeling
- Fact & Dimension Tables
- Data Quality Validation
- Analytics-ready SQL Data Warehouse

---

# 📜 License

This project is licensed under the **MIT License**.

See the [LICENSE](LICENSE) file for details.
