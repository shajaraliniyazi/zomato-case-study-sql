# 🍽️ Zomato SQL Case Study

This project presents a series of **SQL queries** solved using a simulated **Zomato-style food delivery dataset**, with a focus on deriving **business insights** relevant to restaurant operations, customer behavior, sales analytics, and performance metrics.

## 📊 Objective

To demonstrate SQL proficiency by solving real-world data problems in the food delivery domain and to simulate how data analysts or business intelligence professionals could help decision-makers at a food-tech company like Zomato.

## 🛠️ Tools & Technologies

- **Database**: MySQL
- **Language**: SQL
- **Platform**: Local MySQL Workbench / Cloud SQL Services
- **Dataset**: Simulated Zomato-style data with tables like `orders`, `users`, `restaurants`, `menu`, `ratings`, etc.

## 📁 Structure

- `queries.sql` – All SQL queries written to solve the case study problems.
- `README.md` – Documentation and case study overview.
- `ERD.png` – Entity Relationship Diagram (optional).

## 🧠 Business Scenarios Solved

Here are the business problems tackled in this case study:

1. **Initial Setup & Exploration**
   - Connect to the operational Zomato database.
   - Determine overall data volume for early insights.
   - Retrieve a random sample of customer orders for exploratory analysis.

2. **Data Quality Checks**
   - Identify missing values across key transactional and master tables.

3. **Customer Analytics**
   - Determine how many orders each customer has placed.
   - Identify customers who have registered but never placed an order.
   - Analyze each customer’s favorite or most frequently ordered dish.
   - Show detailed order history for specific customers within a chosen time frame.

4. **Restaurant Insights**
   - Discover which restaurants offer the widest variety of items.
   - Compute average ratings and total vote counts for all restaurants.
   - Identify purely vegetarian restaurants.
   - Calculate the average price per dish and find the most expensive establishments.
   - Filter restaurants by sales performance (e.g., those generating revenue above a threshold).
   - Track monthly revenue trends per restaurant.
   - Highlight top revenue-generating restaurants for a given period.

5. **Menu & Food Analytics**
   - Find dishes listed across the highest number of restaurants.

6. **Delivery & Operational Metrics**
   - Compute compensation for delivery partners using custom incentive formulas.
   - Analyze correlations between delivery time and restaurant ratings.
   - Study the relationship between menu pricing and total order volume.

## 📈 Key Insights

🍕 **Top 5 Most Ordered Foods**  
These are the most frequently ordered items across all users:

- **Choco Lava Cake** – 13 orders  
- **Chicken Wings** – 8 orders  
- **Non-veg Pizza** – 5 orders  
- **Rice Meal** – 4 orders  
- **Masala Dosa** – 4 orders  

💸 **Top 5 Users by Total Spend**  
These users spent the most money on food orders:

- **Neha** – ₹8005  
- **Khushboo** – ₹6940  
- **Ankit** – ₹3600  
- **Nitish** – ₹3330  
- **Vartika** – ₹1320  

⏱ **Top 5 Restaurants with Fastest Average Delivery Time**  
Measured by average delivery time in minutes:

- **Dominos** – 23.5 mins  
- **Dosa Plaza** – 39.7 mins  
- **Box8** – 40.5 mins  
- **KFC** – 43.7 mins  
- **China Town** – 56.1 mins  

🍽 **Most Popular Cuisines**  
Based on number of items ordered:

- **American** – 16 items  
- **Italian** – 10 items  
- **South Indian** – 9 items  
- **North Indian** – 8 items  
- **Chinese** – 7 items  

🚴‍♂ **Best Rated Delivery Partners**  
Based on average delivery rating:

- **Lokesh** – 3.86  
- **Gyandeep** – 3.43  
- **Amit** – 3.31  
- **Kartik** – 3.25  
- **Suresh** – 2.73  

## ✅ Outcomes

This case study demonstrates:

- Strong command over SQL aggregation, joins, filtering, subqueries, and window functions.
- Ability to think from a business perspective using data.
- Readiness for roles involving Data Analytics, Business Intelligence, and SQL-based reporting.

## 🚀 Future Work

- Integrate this case study with Tableau/Power BI for visualization.
- Build a dashboard to track real-time restaurant and customer metrics.
- Use Python or R to automate monthly revenue reports.

---

## 📬 Contact

If you found this helpful or would like to collaborate on similar projects:

**GitHub**: [shajaraliniyazi](https://github.com/shajaraliniyazi)  
**LinkedIn**: [https://www.linkedin.com/in/shajar-ali-niyazi-ab02352b7/](https://www.linkedin.com/in/shajar-ali-niyazi-ab02352b7/)  
**Email**: [aligsjafar@gmail.com](mailto:aligsjafar@gmail.com)

---

📌 *Note: The dataset used is simulated for educational purposes and is not affiliated with Zomato.*
