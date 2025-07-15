# 🏥 Hospital Charge Analysis: Uncovering Price Variations for Inpatient Care in the US

This project is a structured case study focused on analyzing inpatient hospital charges across the United States using **SQL, Excel, and Power BI**. It explores how inpatient healthcare costs vary between hospitals, states, and diagnoses, helping reveal patterns that support healthcare decision-making.

---

## 📊 Project Overview

The goal was to transform raw hospital billing data into clear insights for **non-technical stakeholders**, such as healthcare executives, policymakers, and insurance analysts. The project demonstrates core skills in **data cleaning, SQL querying, and interactive dashboard creation**.

---

## 🛠 Tools & Technologies Used

- **SQL (MySQL)** – for data extraction, cleaning, and querying
- **Excel** – for pre-cleaning and formatting before loading into SQL
- **Power BI** – for interactive dashboard creation and visual insights

---

## 📌 Analysis Highlights

### 🔹 High-Cost Hospitals

- California and New Jersey hospitals show average inpatient charges close to **$100,000**.
- Example: O'Connor Hospital in San Jose, CA, has the highest average covered charge.

### 🔹 State-Level Price Variation

- **California ($67,508)** and **New Jersey ($66,125)** lead in average hospital charges.
- **Maryland** has the lowest, at **$13,377**, indicating wide state-level disparities.

### 🔹 Profit Gaps Between Hospitals and Medicare

- Some hospitals charge over **$97,000** more than Medicare reimburses.
- This gap highlights possible overpricing trends.

### 🔹 Most Common Diagnoses by Volume

- **Joint replacement, septicemia,** and **kidney-related conditions** are the most frequent and costly inpatient services.

---

## 🚀 What I Achieved

- Created clean, structured queries that answer real-world healthcare cost questions.
- Built an interactive Power BI dashboard showing **state-level pricing**, **top hospitals**, **diagnosis trends**, and **charge vs. Medicare payment gaps**.
- Developed a full end-to-end healthcare cost analysis workflow using SQL + Excel + Power BI.

---

## ⚙️ Challenges & Solutions

| Challenge | Solution |
|-----------|----------|
| Dollar signs in CSV blocked SQL import | Removed `$` in Excel before loading, re-formatted in SQL output using CONCAT and FORMAT |
| Large file size slowed down SQL import | Cleaned unnecessary columns and ensured correct data types before import |
| No date column in dataset | Focused on cross-sectional analysis instead of time-based trends |
| Structuring insights for non-technical readers | Organized queries and dashboards around specific business questions |

---

## ✅ Insights & Recommendations

### Insights

1. Hospitals in California and New Jersey have the highest inpatient charges.
2. Wide price variation exists across states, with Maryland showing the lowest averages.
3. Some hospitals charge over $97,000 more than Medicare payments.
4. Joint replacements and septicemia account for the highest number of discharges.

### Recommendations

- **Regulators:** Focus audits on high-charge states and hospitals with large charge gaps.
- **Healthcare Providers:** Reassess pricing strategies for common, high-volume diagnoses.
- **Patients & Insurers:** Use public charge data to make informed hospital choices.

---

## 📥 Dataset

- **Source**: [Kaggle](https://www.kaggle.com/datasets/speedoheck/inpatient-hospital-charges/data)  
- **Original Publisher**: U.S. Government via data.gov  
- **Contents**: Hospital names, locations, charges, Medicare payments, diagnoses, total discharges

---

## 👤 Contributor

**Tolulope Olarewaju**

---

## 🙏 Acknowledgements

- Thanks to **MySQL**, **Excel**, and **Power BI** for enabling a complete data analysis workflow.
- Appreciation to **Kaggle** and **data.gov** for providing open healthcare datasets that support real-world project experience.

---

## 📜 License

This project is open for learning and portfolio purposes.  
Not intended for commercial use.

---

## 📬 Contact

For questions, feedback, or collaboration opportunities:  
**olarewajutolulope26@gmail.com**
