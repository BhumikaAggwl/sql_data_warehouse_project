# 🏗️ SQL Data Warehouse & Analytics Project

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![T-SQL](https://img.shields.io/badge/T--SQL-0078D4?style=for-the-badge&logo=microsoft&logoColor=white)
![ETL](https://img.shields.io/badge/ETL-Pipeline-blue?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

A complete **SQL Server Data Warehouse** project built using the **Medallion Architecture (Bronze → Silver → Gold)**. The project demonstrates end-to-end data engineering concepts including ETL pipelines, data cleansing, dimensional modeling, and analytical reporting.

---

# 📖 Project Overview

This project showcases the complete lifecycle of building a modern data warehouse from raw operational data to analytics-ready tables.

### Key Features

- Extract data from CRM and ERP source systems
- Build ETL pipelines using T-SQL
- Clean, standardize and validate data
- Implement Bronze, Silver and Gold layers
- Design a Star Schema for analytics
- Perform data quality and integrity checks
- Enable fast SQL-based reporting and BI

---

# 🏗️ Data Architecture

The project follows the **Medallion Architecture**, consisting of three logical layers.

![Data Architecture](docs/data_architecture.png)

### 🥉 Bronze Layer
- Raw data ingestion
- Loads CRM and ERP CSV files into SQL Server
- No transformations applied

### 🥈 Silver Layer
- Data cleansing
- Standardization
- Deduplication
- Null handling
- Business rule validation

### 🥇 Gold Layer
- Business-ready analytical model
- Star schema implementation
- Fact and dimension tables optimized for reporting

---

# ⭐ Data Model

The Gold layer follows a **Star Schema**.

| Table | Type | Description |
|--------|------|-------------|
| `fact_sales` | Fact | Sales transactions and business metrics |
| `dim_customers` | Dimension | Customer information |
| `dim_products` | Dimension | Product details and hierarchy |
| `dim_date` | Dimension | Calendar attributes for time analysis |

---

# 🚀 ETL Workflow

```
CSV Files
     │
     ▼
Bronze Layer
(Raw Data)
     │
     ▼
Silver Layer
(Clean & Transform)
     │
     ▼
Gold Layer
(Star Schema)
     │
     ▼
Analytics & Reporting
```

---

# 📂 Repository Structure

```
sql_data_warehouse_project/
│
├── datasets/
│   ├── crm/
│   └── erp/
│
├── docs/
│   ├── data_architecture.png
│   ├── data_models.drawio
│   ├── data_flow.drawio
│   └── data_catalog.md
│
├── scripts/
│   ├── bronze/
│   ├── silver/
│   └── gold/
│
├── tests/
│   └── quality_checks_gold.sql
│
├── README.md
├── LICENSE
└── .gitignore
```

---

# 🛠️ Technologies Used

| Category | Technology |
|-----------|------------|
| Database | Microsoft SQL Server |
| Language | T-SQL |
| Architecture | Medallion Architecture |
| Modeling | Star Schema |
| ETL | SQL Stored Procedures |
| Data Sources | CRM & ERP CSV Files |

---

# 📊 Data Pipeline

The ETL pipeline performs the following operations:

### Bronze

- Import raw CSV files
- Preserve source data
- Maintain original structure

### Silver

- Remove duplicates
- Handle missing values
- Standardize formats
- Clean inconsistent records
- Validate business rules

### Gold

- Create dimensions
- Create fact tables
- Build relationships
- Optimize analytical queries

---

# ✅ Data Quality Checks

The project includes automated validation scripts to ensure data reliability.

Checks include:

- Duplicate detection
- Null value validation
- Primary key uniqueness
- Foreign key integrity
- Data consistency
- Business rule validation

---

# 🚀 Getting Started

## Prerequisites

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)

## Setup

Clone the repository

```bash
git clone https://github.com/BhumikaAggwl/sql_data_warehouse_project.git

cd sql_data_warehouse_project
```

Run the SQL scripts in the following order:

```
1. Bronze Layer
2. Silver Layer
3. Gold Layer
4. Data Quality Tests
```

---

# 📈 Business Use Cases

The warehouse supports analytics such as:

- Sales Performance
- Customer Segmentation
- Product Performance
- Revenue Trends
- Time-based Analysis
- Business Intelligence Reporting

---

# 🎯 Skills Demonstrated

- SQL Development
- ETL Pipeline Design
- Data Warehousing
- Data Modeling
- Dimensional Modeling
- Data Engineering
- Data Cleaning
- SQL Performance Optimization
- Analytical SQL

---

# 🛡️ License

This project is licensed under the **MIT License**.

See the [LICENSE](LICENSE) file for details.# 🏗️ SQL Data Warehouse & Analytics Project

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![T-SQL](https://img.shields.io/badge/T--SQL-0078D4?style=for-the-badge&logo=microsoft&logoColor=white)
![ETL](https://img.shields.io/badge/ETL-Pipeline-blue?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

A complete **SQL Server Data Warehouse** project built using the **Medallion Architecture (Bronze → Silver → Gold)**. The project demonstrates end-to-end data engineering concepts including ETL pipelines, data cleansing, dimensional modeling, and analytical reporting.

---

# 📖 Project Overview

This project showcases the complete lifecycle of building a modern data warehouse from raw operational data to analytics-ready tables.

### Key Features

- Extract data from CRM and ERP source systems
- Build ETL pipelines using T-SQL
- Clean, standardize and validate data
- Implement Bronze, Silver and Gold layers
- Design a Star Schema for analytics
- Perform data quality and integrity checks
- Enable fast SQL-based reporting and BI

---

# 🏗️ Data Architecture

The project follows the **Medallion Architecture**, consisting of three logical layers.

![Data Architecture](docs/data_architecture.png)

### 🥉 Bronze Layer
- Raw data ingestion
- Loads CRM and ERP CSV files into SQL Server
- No transformations applied

### 🥈 Silver Layer
- Data cleansing
- Standardization
- Deduplication
- Null handling
- Business rule validation

### 🥇 Gold Layer
- Business-ready analytical model
- Star schema implementation
- Fact and dimension tables optimized for reporting

---

# ⭐ Data Model

The Gold layer follows a **Star Schema**.

| Table | Type | Description |
|--------|------|-------------|
| `fact_sales` | Fact | Sales transactions and business metrics |
| `dim_customers` | Dimension | Customer information |
| `dim_products` | Dimension | Product details and hierarchy |
| `dim_date` | Dimension | Calendar attributes for time analysis |

---

# 🚀 ETL Workflow

```
CSV Files
     │
     ▼
Bronze Layer
(Raw Data)
     │
     ▼
Silver Layer
(Clean & Transform)
     │
     ▼
Gold Layer
(Star Schema)
     │
     ▼
Analytics & Reporting
```

---

# 📂 Repository Structure

```
sql_data_warehouse_project/
│
├── datasets/
│   ├── crm/
│   └── erp/
│
├── docs/
│   ├── data_architecture.png
│   ├── data_models.drawio
│   ├── data_flow.drawio
│   └── data_catalog.md
│
├── scripts/
│   ├── bronze/
│   ├── silver/
│   └── gold/
│
├── tests/
│   └── quality_checks_gold.sql
│
├── README.md
├── LICENSE
└── .gitignore
```

---

# 🛠️ Technologies Used

| Category | Technology |
|-----------|------------|
| Database | Microsoft SQL Server |
| Language | T-SQL |
| Architecture | Medallion Architecture |
| Modeling | Star Schema |
| ETL | SQL Stored Procedures |
| Data Sources | CRM & ERP CSV Files |

---

# 📊 Data Pipeline

The ETL pipeline performs the following operations:

### Bronze

- Import raw CSV files
- Preserve source data
- Maintain original structure

### Silver

- Remove duplicates
- Handle missing values
- Standardize formats
- Clean inconsistent records
- Validate business rules

### Gold

- Create dimensions
- Create fact tables
- Build relationships
- Optimize analytical queries

---

# ✅ Data Quality Checks

The project includes automated validation scripts to ensure data reliability.

Checks include:

- Duplicate detection
- Null value validation
- Primary key uniqueness
- Foreign key integrity
- Data consistency
- Business rule validation

---

# 🚀 Getting Started

## Prerequisites

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)

## Setup

Clone the repository

```bash
git clone https://github.com/BhumikaAggwl/sql_data_warehouse_project.git

cd sql_data_warehouse_project
```

Run the SQL scripts in the following order:

```
1. Bronze Layer
2. Silver Layer
3. Gold Layer
4. Data Quality Tests
```

---

# 📈 Business Use Cases

The warehouse supports analytics such as:

- Sales Performance
- Customer Segmentation
- Product Performance
- Revenue Trends
- Time-based Analysis
- Business Intelligence Reporting

---

# 🎯 Skills Demonstrated

- SQL Development
- ETL Pipeline Design
- Data Warehousing
- Data Modeling
- Dimensional Modeling
- Data Engineering
- Data Cleaning
- SQL Performance Optimization
- Analytical SQL

---

# 🛡️ License

This project is licensed under the **MIT License**.

See the [LICENSE](LICENSE) file for details.
