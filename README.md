# 🏗️ SQL Data Warehouse Project

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![T-SQL](https://img.shields.io/badge/T--SQL-0078D4?style=for-the-badge&logo=microsoft&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

A modern, end-to-end **SQL Server Data Warehouse** built with dimensional modeling, ETL pipelines, and data quality checks — designed for BI reporting and analytics.

---

## 🏛️ Architecture

```
Raw Data Sources ➡️ Staging (Extract) ➡️ Transform & Clean ➡️ Data Warehouse (Load) ➡️ BI / Analytics
```

The warehouse follows a **Star Schema** with the following tables:

| Type | Table | Description |
|---|---|---|
| Fact | `fact_sales` | Transactional metrics, quantities, and foreign keys |
| Dimension | `dim_customers` | Customer demographics and profile data |
| Dimension | `dim_products` | Product categories, descriptions, and pricing |
| Dimension | `dim_date` | Year, Quarter, Month, Weekday attributes |

---

## 🗂️ Repository Structure

```
sql_data_warehouse_project/
├── datasets/                     # Raw source data files (CSV / text dumps)
├── docs/                         # Architecture diagrams and data dictionary
├── scripts/
│   └── ddl_gold.sql              # T-SQL DDL: Gold layer analytical tables
├── tests/
│   └── quality_checks_gold.sql   # Data quality & integrity validation scripts
├── LICENSE
└── README.md
```

---

## 🚀 Getting Started

### Prerequisites

- **Database:** [Microsoft SQL Server](https://www.microsoft.com/en-us/sql-server)
- **Client:** [SSMS](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms), [Azure Data Studio](https://azure.microsoft.com/en-us/products/data-studio), or [DBeaver](https://dbeaver.io/)

### Setup

```bash
git clone https://github.com/BhumikaAggwl/sql_data_warehouse_project.git
cd sql_data_warehouse_project
```

Then in your SQL client:

```sql
-- 1. Create Gold layer tables
-- Run: scripts/ddl_gold.sql

-- 2. Validate data integrity
-- Run: tests/quality_checks_gold.sql
```

---

## 🛠️ Tech Stack

| Component | Technology |
|---|---|
| Database Engine | Microsoft SQL Server |
| Language | T-SQL (Transact-SQL) |
| Data Modeling | Star Schema / Dimensional Modeling |

---

## 📄 License

[MIT License](LICENSE) — free to use, modify, and share with attribution.

---

## 🙋‍♀️ Author

**Bhumika Aggarwal** · [GitHub](https://github.com/BhumikaAggwl)# 🏗️ SQL Data Warehouse Project

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![T-SQL](https://img.shields.io/badge/T--SQL-0078D4?style=for-the-badge&logo=microsoft&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

A modern, end-to-end **SQL Server Data Warehouse** built with dimensional modeling, ETL pipelines, and data quality checks — designed for BI reporting and analytics.

---

## 🏛️ Architecture

```
Raw Data Sources ➡️ Staging (Extract) ➡️ Transform & Clean ➡️ Data Warehouse (Load) ➡️ BI / Analytics
```

The warehouse follows a **Star Schema** with the following tables:

| Type | Table | Description |
|---|---|---|
| Fact | `fact_sales` | Transactional metrics, quantities, and foreign keys |
| Dimension | `dim_customers` | Customer demographics and profile data |
| Dimension | `dim_products` | Product categories, descriptions, and pricing |
| Dimension | `dim_date` | Year, Quarter, Month, Weekday attributes |

---

## 🗂️ Repository Structure

```
sql_data_warehouse_project/
├── datasets/                     # Raw source data files (CSV / text dumps)
├── docs/                         # Architecture diagrams and data dictionary
├── scripts/
│   └── ddl_gold.sql              # T-SQL DDL: Gold layer analytical tables
├── tests/
│   └── quality_checks_gold.sql   # Data quality & integrity validation scripts
├── LICENSE
└── README.md
```

---

## 🚀 Getting Started

### Prerequisites

- **Database:** [Microsoft SQL Server](https://www.microsoft.com/en-us/sql-server)
- **Client:** [SSMS](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms), [Azure Data Studio](https://azure.microsoft.com/en-us/products/data-studio), or [DBeaver](https://dbeaver.io/)

### Setup

```bash
git clone https://github.com/BhumikaAggwl/sql_data_warehouse_project.git
cd sql_data_warehouse_project
```

Then in your SQL client:

```sql
-- 1. Create Gold layer tables
-- Run: scripts/ddl_gold.sql

-- 2. Validate data integrity
-- Run: tests/quality_checks_gold.sql
```

---

## 🛠️ Tech Stack

| Component | Technology |
|---|---|
| Database Engine | Microsoft SQL Server |
| Language | T-SQL (Transact-SQL) |
| Data Modeling | Star Schema / Dimensional Modeling |

---

## 📄 License

[MIT License](LICENSE) — free to use, modify, and share with attribution.

---

## 🙋‍♀️ Author

**Bhumika Aggarwal** · [GitHub](https://github.com/BhumikaAggwl)# 🏗️ SQL Data Warehouse Project

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![T-SQL](https://img.shields.io/badge/T--SQL-0078D4?style=for-the-badge&logo=microsoft&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

A modern, end-to-end **SQL Server Data Warehouse** built with dimensional modeling, ETL pipelines, and data quality checks — designed for BI reporting and analytics.

---

## 🏛️ Architecture

```
Raw Data Sources ➡️ Staging (Extract) ➡️ Transform & Clean ➡️ Data Warehouse (Load) ➡️ BI / Analytics
```

The warehouse follows a **Star Schema** with the following tables:

| Type | Table | Description |
|---|---|---|
| Fact | `fact_sales` | Transactional metrics, quantities, and foreign keys |
| Dimension | `dim_customers` | Customer demographics and profile data |
| Dimension | `dim_products` | Product categories, descriptions, and pricing |
| Dimension | `dim_date` | Year, Quarter, Month, Weekday attributes |

---

## 🗂️ Repository Structure

```
sql_data_warehouse_project/
├── datasets/                     # Raw source data files (CSV / text dumps)
├── docs/                         # Architecture diagrams and data dictionary
├── scripts/
│   └── ddl_gold.sql              # T-SQL DDL: Gold layer analytical tables
├── tests/
│   └── quality_checks_gold.sql   # Data quality & integrity validation scripts
├── LICENSE
└── README.md
```

---

## 🚀 Getting Started

### Prerequisites

- **Database:** [Microsoft SQL Server](https://www.microsoft.com/en-us/sql-server)
- **Client:** [SSMS](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms), [Azure Data Studio](https://azure.microsoft.com/en-us/products/data-studio), or [DBeaver](https://dbeaver.io/)

### Setup

```bash
git clone https://github.com/BhumikaAggwl/sql_data_warehouse_project.git
cd sql_data_warehouse_project
```

Then in your SQL client:

```sql
-- 1. Create Gold layer tables
-- Run: scripts/ddl_gold.sql

-- 2. Validate data integrity
-- Run: tests/quality_checks_gold.sql
```

---

## 🛠️ Tech Stack

| Component | Technology |
|---|---|
| Database Engine | Microsoft SQL Server |
| Language | T-SQL (Transact-SQL) |
| Data Modeling | Star Schema / Dimensional Modeling |

---

## 📄 License

[MIT License](LICENSE) — free to use, modify, and share with attribution.

---

## 🙋‍♀️ Author

**Bhumika Aggarwal** · [GitHub](https://github.com/BhumikaAggwl)
