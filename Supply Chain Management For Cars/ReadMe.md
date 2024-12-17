# Supply Chain Management For Cars

The Supply Chain Management for Cars Dashboard project focuses on providing actionable insights into order management, sales performance, and customer behavior for CargoSmart. This Power BI solution leverages data from MySQL and incorporates interactive visualizations to help supply chain stakeholders monitor KPIs and improve decision-making.

## Business Need
CargoSmart’s supply chain team required a dynamic reporting solution to replace static reports and address the following needs:
	1. Monitor key performance metrics (KPIs) like Total Sales, Discounts, and Order Trends.
	2. Gain insights into sales performance by state, car models, and customer orders.
	3. Identify bottlenecks in the supply chain and opportunities for optimization.
	4. Analyze customer feedback and its impact on performance.
	5. Enable filtering and drill-down capabilities for better granularity across Car Models, Car Makers, and Customers.

## Solution Approach
The solution was implemented using Power BI, MySQL, and Python, providing:
	• Real-time integration with MySQL database.
	• A comprehensive data model linking tables like SupplyChainManagement, DateMaster, and calculated measures (DAX Measures).
	• Intuitive dashboards featuring KPIs, charts, and drill-downs for better insights.

## Key Highlights
1. Navigation Dashboard (Home)
	• Provides quick access to the key modules:
		○ Orders Detail Summary
		○ Sales Detail Summary
		○ Customer View: Drill Down

2. Orders Detail Summary
	• Displays critical supply chain insights, including:
		○ Number of Car Models: 503
		○ Number of Car Makers: 54
		○ Top 15 Orders by Sales: Table showing customers, car models, and order dates.
		○ Total Sales by State: A map highlighting regional performance.
Value: Helps identify top-performing regions, customers, and car models.

3. Sales Detail Summary
	• Focuses on sales trends and breakdowns:
		○ Total Sales: 853.10M
		○ Sum of Discounts: 577.36
		○ Sales by Month: Bar chart showing monthly trends.
		○ Sum of Sales by Ship Mode: Donut and line charts categorizing sales into Standard, Second Class, First Class, and Same Day.
		○ Sales by Quarter: Summarized sales performance across four quarters.
Value: Allows tracking of sales performance over time, ship modes, and discounts.

4. Customer View: Drill Down
	• Provides granular insights into customer behavior and feedback:
		○ Top 15 Car Makers by Sales: Table displaying key customers and their car maker preferences.
		○ Sales by Customer Feedback: Highlights customer satisfaction levels (Bad, Okay, Good, Very Good, Very Bad).
		○ Drill-Down View: Sankey chart showing connections between:
			§ Car Models
			§ Customer Names
			§ States
			§ Car Colors
Value: Helps analyze customer satisfaction and its relationship with sales performance.

5. Data Model
	• Developed a robust data model linking the SupplyChainManagement, DateMaster, and calculated measures (TotalSales).
	• Ensures smooth relationships for accurate reporting and analysis.
Value: Allows seamless integration of multiple datasets for advanced reporting.

6. MySQL Database Connection
	• Real-time connection to SupplyChainManagementForCar database hosted on localhost.
	• Ensures data accuracy and up-to-date reporting.

Conclusion
The Supply Chain Management for Cars Dashboard is a robust solution for CargoSmart, empowering the supply chain team to track, analyze, and optimize operations efficiently. The intuitive visualizations and real-time integrations ensure better visibility into performance, enabling data-driven decision-making.

## 1. Home Page
![1  Home](https://github.com/user-attachments/assets/b009e80d-f998-4dff-be39-65344af49631)

## 2. Orders
      
![2  Orders](https://github.com/user-attachments/assets/953ee5a8-1a7a-46a1-b45a-8db3f95b5965)

## 3. Sales

![3  Sales](https://github.com/user-attachments/assets/16a59a86-1aec-44bd-ae9b-8a49bca72a3a)

## 4. Customer Overview

![4  Customer Overview](https://github.com/user-attachments/assets/b537c817-d1b3-4744-9d4e-9ad62b5c63ec)

## 5. Data Model

![5  Data Model](https://github.com/user-attachments/assets/e1ceb080-7c83-4d4a-973a-e18f95d0720e)
