# 🛒 Amazon India Sales Analysis (2019–2022)

A comprehensive dataset and analysis of Amazon India sales transactions spanning **4 years (2019–2022)**, covering customer segments, product categories, regional performance, and profitability metrics across Indian states.

---

## 📊 Dataset Overview

| Attribute        | Details                          |
|------------------|----------------------------------|
| **Records**      | 487 transactions                 |
| **Time Period**  | January 2019 – December 2022     |
| **Total Sales**  | ₹12,06,731.24                    |
| **Total Profit** | ₹3,63,622.20                     |
| **File Format**  | `.xlsx` (Excel)                  |

---

## 📁 File Structure

```
amazon_India_sales_4_years.xlsx
```

### Columns

| Column             | Description                                      |
|--------------------|--------------------------------------------------|
| `sno`              | Serial number (row identifier)                   |
| `Order ID`         | Unique order identifier (e.g., AMZ-10000)        |
| `Order Date`       | Date the order was placed                        |
| `Customer Segment` | Customer type: Consumer, Corporate, Home Office  |
| `Product Category` | Main category: Technology, Furniture, Office Supplies |
| `Sub-Category`     | Sub-category (e.g., Phones, Chairs, Binders, Tables, Storage) |
| `Region`           | Geographic region: South, East, West, Central, North |
| `State`            | Indian state where the order was delivered       |
| `Sales`            | Revenue generated from the order (₹)            |
| `Quantity`         | Number of units ordered                          |
| `Discount`         | Discount applied (as a decimal, e.g., 0.1 = 10%)|
| `Profit`           | Profit earned or lost on the order (₹)          |
| `Shipping Cost`    | Cost of shipping the order (₹)                  |

---

## 🔍 Key Dimensions

- **Customer Segments:** Consumer · Corporate · Home Office
- **Product Categories:** Technology · Furniture · Office Supplies
- **Sub-Categories:** Phones · Chairs · Tables · Binders · Storage
- **Regions:** South · East · West · Central · North
- **States:** All major Indian states and union territories

---

## 💡 Potential Use Cases

- **Sales trend analysis** across 4 years
- **Regional performance** comparison across Indian states
- **Category & sub-category** profitability analysis
- **Customer segment** behavior and purchasing patterns
- **Discount impact** on profit margins
- **Shipping cost** optimization studies
- Building **dashboards** in Power BI, Tableau, or Excel
- Training **machine learning** models for sales forecasting

---

## 🚀 Getting Started

### Prerequisites

```bash
pip install pandas openpyxl matplotlib seaborn
```

### Load the Dataset

```python
import pandas as pd

df = pd.read_excel("amazon_India_sales_4_years.xlsx")
print(df.shape)       # (487, 13)
print(df.head())
print(df.describe())
```

### Quick Exploration

```python
# Sales by Region
print(df.groupby("Region")["Sales"].sum().sort_values(ascending=False))

# Profit by Product Category
print(df.groupby("Product Category")["Profit"].sum())

# Yearly Sales Trend
df["Year"] = pd.to_datetime(df["Order Date"]).dt.year
print(df.groupby("Year")["Sales"].sum())
```

---

## 📈 Sample Insights

```python
import matplotlib.pyplot as plt

# Yearly Sales Trend
df["Year"] = pd.to_datetime(df["Order Date"]).dt.year
df.groupby("Year")["Sales"].sum().plot(kind="bar", title="Yearly Sales (2019–2022)")
plt.ylabel("Total Sales (₹)")
plt.tight_layout()
plt.show()
```

---

## 📌 Notes

- `Order Date` is stored as a date value; parse with `pd.to_datetime()` for time-series analysis.
- Negative `Profit` values indicate loss-making orders — useful for discount/margin analysis.
- `Discount` is expressed as a decimal fraction (0.0–1.0).

---

## 📄 License

This dataset is intended for **educational and analytical purposes** only.

---

## 🤝 Contributing

Contributions are welcome! Feel free to open issues or submit pull requests for additional analysis scripts, visualizations, or improvements.

---

## ⭐ Acknowledgements

Dataset represents simulated Amazon India sales data for analytical and learning purposes.
