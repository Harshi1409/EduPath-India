# EduPath India 🎓
### JEE & Private College Analytics Dashboard

![Python](https://img.shields.io/badge/Python-3.12-blue)
![MySQL](https://img.shields.io/badge/MySQL-8.0-orange)
![PowerBI](https://img.shields.io/badge/PowerBI-Dashboard-yellow)


## 📌 Problem Statement
Every year 13+ lakh students appear for JEE but struggle to understand cutoff trends, category advantages, and college comparisons. This dashboard provides data-driven insights to help students make informed decisions.


## 🛠️ Tools & Technologies
| Tool | Purpose |
|------|---------|
| Python (Pandas, NumPy) | Data collection & cleaning |
| MySQL | Database design & SQL analysis |
| Power BI | Interactive dashboard & DAX |


## 📊 Dataset
| Dataset | Source | Rows |
|---------|--------|------|
| JoSAA JEE Cutoff (2018–2025) | Kaggle | 4,32,524 |
| Private Colleges | Kaggle (NIRF) | 732 |


## 📁 Project Structure

EduPath-India/
├── notebooks/
│ └── 01_data_cleaning.ipynb
├── sql/
│ └── analysis_queries.sql
├── screenshots/
│ ├── home.png
│ ├── jee_analysis.png
│ ├── cutoff_trends.png
│ ├── private_colleges.png
│ └── comparator.png
└── README.md


## 📋 Dashboard Pages
| Page | What It Shows |
|------|---------------|
| 🏠 Home | Overview of India's engineering education |
| 📊 JEE Analysis | Hardest institutes, branches, category advantage |
| 📈 Cutoff Trends | Year-wise, category-wise, round-wise analysis |
| 🏫 Private Colleges | Fees vs placement, state insights, ROI |
| ⚖️ Comparator | Side-by-side institute comparison |


## 🔍 Key Insights
- 🔵 **AI & ML** branch is now harder than CSE to get into
- 🟢 **ST category** has **12x rank advantage** over General
- 🟠 **IIT-NIT gap widened** significantly after 2022
- 🔴 **Telangana** leads with most private engineering colleges
- 🟣 **High fees ≠ better placement** in private colleges


## 💾 SQL Highlights
- 10 advanced queries including **CTEs, Window Functions**
- **CASE WHEN** for institute type classification
- **RANK() OVER PARTITION BY** for state-wise ranking
- **CREATE VIEW** for Power BI integration


## 👩‍💻 Author
**Harshita Bansal**
- 📧 harshitabansal1409@gmail.com
- 🔗 [LinkedIn](https://linkedin.com/in/harshita-bansal-084286321)
- 🐙 [GitHub](https://github.com/Harshi1409)
