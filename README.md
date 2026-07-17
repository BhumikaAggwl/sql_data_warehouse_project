# 🏗️ SQL Data Warehouse Project

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![T-SQL](https://img.shields.io/badge/T--SQL-0078D4?style=for-the-badge&logo=microsoft&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

A modern, end-to-end **SQL Server Data Warehouse** built with industry-standard dimensional modeling, ETL pipelines, and data quality checks — designed for BI reporting and analytics.

---

## 📌 Project Overview

This project demonstrates the design and implementation of a centralized data warehouse using **Microsoft SQL Server**. Raw data from transactional source systems is ingested, cleaned, and transformed through structured layers (Staging → Gold) to enable fast and reliable business intelligence reporting.

**Key highlights:**
- Medallion-style layered architecture (Staging → Analytical/Gold)
- Dimensional modeling using Star Schema
- T-SQL scripts for DDL, ETL, and data quality validation

---

## 🏛️ Architecture

```
Raw Data Sources ➡️ Staging Area (Extract) ➡️ Transform & Clean ➡️ Data Warehouse (Load) ➡️ BI / Analytics
```

### Schema Design

**Fact Tables**
| Table | Description |
|---|---|
| `fact_sales` | Transactional metrics, quantities, and foreign keys |

**Dimension Tables**
| Table | Description |
|---|---|
| `dim_customers` | Customer demographics and profile data |
| `dim_products` | Product categories, descriptions, and pricing |
| `dim_date` | Time-intelligence attributes (Year, Quarter, Month, Weekday) |

---

## 🗂️ Repository Structure

```
sql_data_warehouse_project/
├── datasets/                     # Raw and processed source data files (CSV / text dumps)
├── docs/                         # Architecture diagrams, data dictionaries, schema designs
├── scripts/
│   └── ddl_gold.sql              # T-SQL DDL: creates Gold layer analytical tables
├── tests/
│   └── quality_checks_gold.sql   # Data quality & integrity validation scripts
├── LICENSE
└── README.md
```

---

## 🚀 Getting Started

### Prerequisites

- **Database Engine:** [Microsoft SQL Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
- **Client Tool (any one):**
  - [SQL Server Management Studio (SSMS)](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms)
  - [Azure Data Studio](https://azure.microsoft.com/en-us/products/data-studio)
  - [DBeaver](https://dbeaver.io/)

### Installation & Setup

**1. Clone the repository**
```bash
git clone https://github.com/BhumikaAggwl/sql_data_warehouse_project.git
cd sql_data_warehouse_project
```

**2. Set up the analytical layer**

Open your SQL client, connect to your SQL Server instance, then run:
```sql
-- Creates Gold layer tables (fact + dimension tables)
-- File: scripts/ddl_gold.sql
```

**3. Run data quality checks**
```sql
-- Validates schema integrity, null rules, PK/FK constraints, and business logic
-- File: tests/quality_checks_gold.sql
```

---

## 🛠️ Tech Stack

| Component | Technology |
|---|---|
| Database Engine | Microsoft SQL Server |
| Query Language | T-SQL (Transact-SQL) |
| Data Modeling | Dimensional Modeling — Star Schema |

---

## 📊 What's Included

- ✅ **DDL Scripts** — Table definitions with keys and constraints for the Gold analytical layer
- ✅ **Quality Checks** — Automated validation for nulls, key integrity, and business rules
- ✅ **Dimensional Model** — Fact and dimension tables optimized for BI queries
- ✅ **Documentation** — Architecture overview and data dictionary (in `/docs`)

---

## 📄 License

This project is licensed under the [MIT License](LICENSE) — free to use, modify, and share with attribution.

---

## 🙋‍♀️ Author

**Bhumika Aggarwal**  
[GitHub](https://github.com/BhumikaAggwl)# 🏗️ SQL Data Warehouse Project

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![T-SQL](https://img.shields.io/badge/T--SQL-0078D4?style=for-the-badge&logo=microsoft&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

A modern, end-to-end **SQL Server Data Warehouse** built with industry-standard dimensional modeling, ETL pipelines, and data quality checks — designed for BI reporting and analytics.

---

## 📌 Project Overview

This project demonstrates the design and implementation of a centralized data warehouse using **Microsoft SQL Server**. Raw data from transactional source systems is ingested, cleaned, and transformed through structured layers (Staging → Gold) to enable fast and reliable business intelligence reporting.

**Key highlights:**
- Medallion-style layered architecture (Staging → Analytical/Gold)
- Dimensional modeling using Star Schema
- T-SQL scripts for DDL, ETL, and data quality validation

---

## 🏛️ Architecture

```
Raw Data Sources ➡️ Staging Area (Extract) ➡️ Transform & Clean ➡️ Data Warehouse (Load) ➡️ BI / Analytics
```

### Schema Design

**Fact Tables**
| Table | Description |
|---|---|
| `fact_sales` | Transactional metrics, quantities, and foreign keys |

**Dimension Tables**
| Table | Description |
|---|---|
| `dim_customers` | Customer demographics and profile data |
| `dim_products` | Product categories, descriptions, and pricing |
| `dim_date` | Time-intelligence attributes (Year, Quarter, Month, Weekday) |

---

## 🗂️ Repository Structure

```
sql_data_warehouse_project/
├── datasets/                     # Raw and processed source data files (CSV / text dumps)
├── docs/                         # Architecture diagrams, data dictionaries, schema designs
├── scripts/
│   └── ddl_gold.sql              # T-SQL DDL: creates Gold layer analytical tables
├── tests/
│   └── quality_checks_gold.sql   # Data quality & integrity validation scripts
├── LICENSE
└── README.md
```

---

## 🚀 Getting Started

### Prerequisites

- **Database Engine:** [Microsoft SQL Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
- **Client Tool (any one):**
  - [SQL Server Management Studio (SSMS)](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms)
  - [Azure Data Studio](https://azure.microsoft.com/en-us/products/data-studio)
  - [DBeaver](https://dbeaver.io/)

### Installation & Setup

**1. Clone the repository**
```bash
git clone https://github.com/BhumikaAggwl/sql_data_warehouse_project.git
cd sql_data_warehouse_project
```

**2. Set up the analytical layer**

Open your SQL client, connect to your SQL Server instance, then run:
```sql
-- Creates Gold layer tables (fact + dimension tables)
-- File: scripts/ddl_gold.sql
```

**3. Run data quality checks**
```sql
-- Validates schema integrity, null rules, PK/FK constraints, and business logic
-- File: tests/quality_checks_gold.sql
```

---

## 🛠️ Tech Stack

| Component | Technology |
|---|---|
| Database Engine | Microsoft SQL Server |
| Query Language | T-SQL (Transact-SQL) |
| Data Modeling | Dimensional Modeling — Star Schema |

---

## 📊 What's Included

- ✅ **DDL Scripts** — Table definitions with keys and constraints for the Gold analytical layer
- ✅ **Quality Checks** — Automated validation for nulls, key integrity, and business rules
- ✅ **Dimensional Model** — Fact and dimension tables optimized for BI queries
- ✅ **Documentation** — Architecture overview and data dictionary (in `/docs`)

---

## 📄 License

This project is licensed under the [MIT License](LICENSE) — free to use, modify, and share with attribution.

---

## 🙋‍♀️ Author

**Bhumika Aggarwal**  
[GitHub](https://github.com/BhumikaAggwl)# 🏗️ SQL Data Warehouse Project

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![T-SQL](https://img.shields.io/badge/T--SQL-0078D4?style=for-the-badge&logo=microsoft&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

A modern, end-to-end **SQL Server Data Warehouse** built with industry-standard dimensional modeling, ETL pipelines, and data quality checks — designed for BI reporting and analytics.

---

## 📌 Project Overview

This project demonstrates the design and implementation of a centralized data warehouse using **Microsoft SQL Server**. Raw data from transactional source systems is ingested, cleaned, and transformed through structured layers (Staging → Gold) to enable fast and reliable business intelligence reporting.

**Key highlights:**
- Medallion-style layered architecture (Staging → Analytical/Gold)
- Dimensional modeling using Star Schema
- T-SQL scripts for DDL, ETL, and data quality validation

---

## 🏛️ Architecture

```
Raw Data Sources ➡️ Staging Area (Extract) ➡️ Transform & Clean ➡️ Data Warehouse (Load) ➡️ BI / Analytics
```

### Schema Design

**Fact Tables**
| Table | Description |
|---|---|
| `fact_sales` | Transactional metrics, quantities, and foreign keys |

**Dimension Tables**
| Table | Description |
|---|---|
| `dim_customers` | Customer demographics and profile data |
| `dim_products` | Product categories, descriptions, and pricing |
| `dim_date` | Time-intelligence attributes (Year, Quarter, Month, Weekday) |

---

## 🗂️ Repository Structure

```
sql_data_warehouse_project/
├── datasets/                     # Raw and processed source data files (CSV / text dumps)
├── docs/                         # Architecture diagrams, data dictionaries, schema designs
├── scripts/
│   └── ddl_gold.sql              # T-SQL DDL: creates Gold layer analytical tables
├── tests/
│   └── quality_checks_gold.sql   # Data quality & integrity validation scripts
├── LICENSE
└── README.md
```

---

## 🚀 Getting Started

### Prerequisites

- **Database Engine:** [Microsoft SQL Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
- **Client Tool (any one):**
  - [SQL Server Management Studio (SSMS)](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms)
  - [Azure Data Studio](https://azure.microsoft.com/en-us/products/data-studio)
  - [DBeaver](https://dbeaver.io/)

### Installation & Setup

**1. Clone the repository**
```bash
git clone https://github.com/BhumikaAggwl/sql_data_warehouse_project.git
cd sql_data_warehouse_project
```

**2. Set up the analytical layer**

Open your SQL client, connect to your SQL Server instance, then run:
```sql
-- Creates Gold layer tables (fact + dimension tables)
-- File: scripts/ddl_gold.sql
```

**3. Run data quality checks**
```sql
-- Validates schema integrity, null rules, PK/FK constraints, and business logic
-- File: tests/quality_checks_gold.sql
```

---

## 🛠️ Tech Stack

| Component | Technology |
|---|---|
| Database Engine | Microsoft SQL Server |
| Query Language | T-SQL (Transact-SQL) |
| Data Modeling | Dimensional Modeling — Star Schema |

---

## 📊 What's Included

- ✅ **DDL Scripts** — Table definitions with keys and constraints for the Gold analytical layer
- ✅ **Quality Checks** — Automated validation for nulls, key integrity, and business rules
- ✅ **Dimensional Model** — Fact and dimension tables optimized for BI queries
- ✅ **Documentation** — Architecture overview and data dictionary (in `/docs`)

---

## 📄 License

This project is licensed under the [MIT License](LICENSE) — free to use, modify, and share with attribution.

---

## 🙋‍♀️ Author

**Bhumika Aggarwal**  
[GitHub](https://github.com/BhumikaAggwl)# 🏗️ SQL Data Warehouse Project

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![T-SQL](https://img.shields.io/badge/T--SQL-0078D4?style=for-the-badge&logo=microsoft&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

A modern, end-to-end **SQL Server Data Warehouse** built with industry-standard dimensional modeling, ETL pipelines, and data quality checks — designed for BI reporting and analytics.

---

## 📌 Project Overview

This project demonstrates the design and implementation of a centralized data warehouse using **Microsoft SQL Server**. Raw data from transactional source systems is ingested, cleaned, and transformed through structured layers (Staging → Gold) to enable fast and reliable business intelligence reporting.

**Key highlights:**
- Medallion-style layered architecture (Staging → Analytical/Gold)
- Dimensional modeling using Star Schema
- T-SQL scripts for DDL, ETL, and data quality validation

---

## 🏛️ Architecture

```
Raw Data Sources ➡️ Staging Area (Extract) ➡️ Transform & Clean ➡️ Data Warehouse (Load) ➡️ BI / Analytics
```

### Schema Design

**Fact Tables**
| Table | Description |
|---|---|
| `fact_sales` | Transactional metrics, quantities, and foreign keys |

**Dimension Tables**
| Table | Description |
|---|---|
| `dim_customers` | Customer demographics and profile data |
| `dim_products` | Product categories, descriptions, and pricing |
| `dim_date` | Time-intelligence attributes (Year, Quarter, Month, Weekday) |

---

## 🗂️ Repository Structure

```
sql_data_warehouse_project/
├── datasets/                     # Raw and processed source data files (CSV / text dumps)
├── docs/                         # Architecture diagrams, data dictionaries, schema designs
├── scripts/
│   └── ddl_gold.sql              # T-SQL DDL: creates Gold layer analytical tables
├── tests/
│   └── quality_checks_gold.sql   # Data quality & integrity validation scripts
├── LICENSE
└── README.md
```

---

## 🚀 Getting Started

### Prerequisites

- **Database Engine:** [Microsoft SQL Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
- **Client Tool (any one):**
  - [SQL Server Management Studio (SSMS)](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms)
  - [Azure Data Studio](https://azure.microsoft.com/en-us/products/data-studio)
  - [DBeaver](https://dbeaver.io/)

### Installation & Setup

**1. Clone the repository**
```bash
git clone https://github.com/BhumikaAggwl/sql_data_warehouse_project.git
cd sql_data_warehouse_project
```

**2. Set up the analytical layer**

Open your SQL client, connect to your SQL Server instance, then run:
```sql
-- Creates Gold layer tables (fact + dimension tables)
-- File: scripts/ddl_gold.sql
```

**3. Run data quality checks**
```sql
-- Validates schema integrity, null rules, PK/FK constraints, and business logic
-- File: tests/quality_checks_gold.sql
```

---

## 🛠️ Tech Stack

| Component | Technology |
|---|---|
| Database Engine | Microsoft SQL Server |
| Query Language | T-SQL (Transact-SQL) |
| Data Modeling | Dimensional Modeling — Star Schema |

---

## 📊 What's Included

- ✅ **DDL Scripts** — Table definitions with keys and constraints for the Gold analytical layer
- ✅ **Quality Checks** — Automated validation for nulls, key integrity, and business rules
- ✅ **Dimensional Model** — Fact and dimension tables optimized for BI queries
- ✅ **Documentation** — Architecture overview and data dictionary (in `/docs`)

---

## 📄 License

This project is licensed under the [MIT License](LICENSE) — free to use, modify, and share with attribution.

---

## 🙋‍♀️ Author

**Bhumika Aggarwal**  
[GitHub](https://github.com/BhumikaAggwl)
