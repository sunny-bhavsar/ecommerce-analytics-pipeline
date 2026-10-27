# End-to-End E-Commerce Data Analytics Pipeline

A robust, production-grade modern data stack (MDS) pipeline built to ingest, model, transform, and validate e-commerce data using **Snowflake**, **dbt Core**, and a **Python Orchestrator**.

---

## 🏗️ Architecture & Tech Stack
* **Data Warehouse:** Snowflake (`ECOMMERCE_DB`)
* **Transformation & Modeling:** dbt Core (Staging & Mart layers)
* **Data Quality & Testing:** dbt built-in tests (Unique, Not-Null constraints)
* **Orchestration:** Custom Python automation script (`run_pipeline.py`)

---

## 📊 Pipeline Workflow
1. **Ingestion & Storage:** Raw customer, product, and order records loaded into Snowflake raw tables.
2. **Transformation Layer (dbt):**
   * **Staging Models (`stg_`):** Cleaned, renamed, and casted raw tables.
   * **Mart Models (`fact_`):** Business-ready dimensional and fact tables joining orders, products, and customers.
3. **Data Quality Assurance:** Automated source and model tests validating uniqueness and non-null values.
4. **Orchestration:** Sequential execution managed via Python subprocesses.

---

## 🚀 Getting Started Locally

### 1. Clone the Repository
```bash
git clone [https://github.com/sunny-bhavsar/ecommerce-analytics-pipeline.git](https://github.com/sunny-bhavsar/ecommerce-analytics-pipeline.git)
cd ecommerce-analytics-pipeline