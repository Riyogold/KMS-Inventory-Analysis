# KULTRA MEGA STORES INVENTORY ANALYSIS

## Brief Overview

This project explores the sales, customer behavior, product trends, and shipping costs of KM Stores between 2009 and 2012, specifically focusing on the Abuja division. The analysis is SQL-driven and backed with visualizations from Excel and Power BI. It is designed to provide actionable insights to assist the business manager in making data-informed decisions to drive revenue growth and optimize operations.

---

## Project Objective

The primary goal of this project is to analyze KM Store's inventory orders using SQL, to:
- Identify high-performing product categories and regions
- Understand customer behavior/trend
- Uncover shipping cost patterns 
- Support strategic decisions for improved performance

---

## Tools Used

- **Microsoft SQL Server** – For querying and data extraction
- **Microsoft Excel (PivotTables)** – For quick aggregations and calculations
- **Power BI** – For building interactive dashboards and visual insights

---

##  Questions Asked

###  **Case Scenario I: Sales, Regions, Shipping, and Customers**
1. Which product category had the highest sales?
2. What are the top three and bottom three regions in terms of sales?
3. What were the total sales of appliances in Ontario?
4. Advise the management of KMS on what to do to increase revenue from the bottom 10 customers.
5. KM Store incurred the most shipping cost using which shipping method?

###  **Case Scenario II: Customer Segments and Profitability**
6. Who are the most valuable customers, and what products or services do they typically purchase?
7. Which small business customer had the highest sales?
8. Which corporate customer placed the most number of orders in 2009–2012?
9. Which consumer customer was the most profitable one?
10. Which customers returned items, and what segments do they belong to?
11. If the delivery truck is the most economical but the slowest method and Express Air is the fastest but the most expensive one, do you think the company appropriately spent shipping costs based on order priority?Explain your answer

---

##  Dataset Description

The dataset is provided in Excel format, containing records from 2009 to 2012. Key fields include:
- `Sales`
- `Shipping Cost`
- `Ship Mode`
- `Province`
- `Product Category` & `Sub-Category`
- `Order Priority`
- `Customer Segment`
- ... and other transactional fields.

---

##  Process and Approach

1. **Data Cleaning & Preparation:**
- Verified data types 
- Standardized categorical fields like product categories and order priorities

2. **Data Analysis Using SQL:**
- Performed groupings, aggregations to derive answers to the questions
- Identified top products, customers, and regional performance

3. **Visualization Using Power BI and Excel:**
- Created bar charts, pie charts, clustered column charts to visualize trends
- Mapped customer segmentation and shipping cost insights

---

##  Key Insights

### 1. Which product category had the highest sales?
- **Technology** led all categories, driven by high-value items like:
  - **Telephones & Communication**
  - **Computer Peripherals**

---

### 2. Top 3 and Bottom 3 Regions by Sales
- **Top 3 Regions**:  
  - West  
  - Ontario  
  - Prarie  
- **Bottom 3 Regions**:  
  - Nunavut  
  - Northwest Territories  
  - Yukon  

---

### 3. Total Sales of Appliances in Ontario
- ₦202,346.84

---
### 4. Advise to give to KMS Management regarding the bottom 10 customers?

---

### 5. Shipping Method with the Highest Cost
- **Delivery Truck** incurred the highest total shipping cost across all methods.

---

##  Customer Insights and Shipping Cost

### 6. Most Valuable Customers & The Product they Purchase 
| Customer           | Total Sales (₦) |  Products Purchased                               |
|--------------------|-----------------|----------------------------------------------------|
| Emily Phan         | 117,124.44       | Office Machines, Bookcases, Binders, Communication |
| Deborah Brumfield  | 97,433.13        | Copiers, Office Machines, Communication            |
| Roy Skaria         | 92,542.15        | Bookcases, Copiers & Fax, Storage                  |
| Sylvia Foulston    | 88,875.76        | Chairs, Office Machines, Tables                    |
| Grant Carroll      | 88,417.00        | Binders, Bookcases, Chairmats                      |

---

### 7. Small Business Customer with Highest Sales
- **Dennis Kane** with ₦75,967.59 in total sales

---

### 8. Corporate Customer with Most Orders (2009–2012)
- **Adam Hart** with **18** orders

---

### 9. Most Profitable Consumer Customer
- **Emily Phan** with ₦34,005.44 in profit

---

### 10. Customers Who Returned Items (and Their Segment)


---

### 11. Shipping Cost vs Order Priority

| Order Priority   | Shipping Method   | Orders | Avg. Shipping Cost (₦) |
|------------------|-------------------|--------|-------------------------|
| Critical         | Delivery Truck    | 228    | 47.30                   |
|                  | Express Air       | 200    | 8.71                    |
|                  | Regular Air       | 1180   | 7.28                    |
| High             | Delivery Truck    | 248    | 45.19                   |
|                  | Express Air       | 212    | 6.86                    |
|                  | Regular Air       | 1308   | 7.65                    |
| Medium           | Delivery Truck    | 205    | 46.15                   |
|                  | Express Air       | 201    | 8.13                    |
|                  | Regular Air       | 1225   | 7.69                    |
| Low              | Delivery Truck    | 250    | 44.53                   |
|                  | Express Air       | 190    | 8.17                    |
|                  | Regular Air       | 1280   | 8.02                    |
| Not Specified    | Delivery Truck    | 215    | 43.67                   |
|                  | Express Air       | 180    | 8.17                    |
|                  | Regular Air       | 1277   | 7.62                    |

##  Conclusion and Recommendations

1. **Product Category Performance**
- **Technology** had the highest overall sales, largely due to high-value items such as **Telephones and Communication, Computers, and Peripherals**.
- These products had high frequent demand and are high-profit margins products.

2. **Top & Bottom Performing Regions**
- The **top three regions** had large customer base, high- profit margin products, possibly driven by more frequent high-value purchases.
- The **bottom three regions** showed minimal sales activity, possibly due to low product demand, fewer customers or higher shipping costs.

3. **Low-Performing Customers**
- The **bottom 10 customers** (e.g., Jeremy Farry, Nicole Fjeld, Rick Huthwaite) placed orders only 1–3 times.
- Conduct **customer experience surveys** to understand why they did not return.
- Offer **“welcome back” incentives**, like *Buy One Get One* deals.
- Use **product recommendations** based on previous purchases to increase relevance and encourage re-engagement.

4.  **Valuable Customers & Order Frequency**
- Customers like **Emily, Deborah, and Roy** ranked as most valuable due to **frequent purchases**, particularly of **high-margin categories** like Technology and Appliances.

5   **Shipping Method & Cost Efficiency**
- Although **Delivery Truck** had the highest total shipping cost, this was due to its **widespread usage**, not its unit cost. It remained the **most economical per shipment**.
- **Express Air**, despite being a faster option, was **strategically used** for high and critical priority orders and had a surprisingly lower average cost per critical delivery compared to Delivery Truck.

---

### Final Recommendations

- **Focus Sales and Marketing Efforts** on Technology and Appliance categories across high-performing regions.
- **Streamline Shipping Costs** by reducing Delivery Truck usage for low-priority orders and encouraging Regular Air when urgency is low.
- **Engage Low-Frequency Customers** with personalized follow-ups, discounts, and recommendations.
- **Reward High-Value Customers** and **target Corporate segments** with loyalty programs and early product access.
- **Reassess Underperforming Regions** to identify possible distribution, marketing, or pricing improvements.
