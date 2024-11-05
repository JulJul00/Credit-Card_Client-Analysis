# Credit Card Analysis

# Project Background
ABC Incorporation is the global credit card service company that issues credit card for retail bank worldwide.

The company has significant amounts of data on its credit card operation that has been previously underutilised. The project thoroughly analyses and synthesises the UK data in 2023, in order to uncover critical insights that will improve ABC's commercial success.

Insights and recommendations are provided on the following key areas:

- **Transaction Trend Analysis:** Evaluation of historical transaction patterns, focusing on Transaction Revenue, Order Volume, and Week on Week(WoW) flunctuations.
- **Customer Background Analysis:** An assessment of the customer information metrics, includeds Customer Satisfaction Score, Deliquency Rate, Age Group, Job Type, and Educational Level.
- **Credit Card and Expenditure Category Performance:** An analysis of ABC's Card Categories and Expenditure Types, includes Transaction Revenue, and Order Volume.

The SQL queries used to inspect and clean the data for this analysis can be found here [link].
An interactive PowerBI dashboard used to report and explore sales trends can be found here [link].

**Note:** The dataset is randomly augmented by ChatGPT.


# Data Structure & Initial Checks

The companies main database structure as seen below consists of four tables: table1, table2, table3, table4, with a total row count of X records. A description of each table is as follows:
- **Table 2:**
- **Table 3:**
- **Table 4:**
- **Table 5:**

[Entity Relationship Diagram here]


# Executive Summary

### Overview of Findings

In 2023, ABC Inc. displayed steady performance across its key metrics, achieving a total revenue of 142.12M, an average utilisation ratio of 49.14%, a transaction count of 3M, and a customer acquisition cost of 2M. The quarter-wise revenue and transactions chart shows a peak in Q2, followed by a gradual decline through Q3 and Q4. Monthly revenue trends indicate fluctuations throughout the year, with noticeable highs in early and mid-2023.

Below is the overview page from the PowerBI dashboard and more examples are included throughout the report. 
The entire interactive dashboard can be downloaded here.
![Description of the image](https://github.com/JulJul00/Credit-Card_Client-Analysis/blob/main/ABC%20Incorporation%20Overview.png)


### Transaction Trend:

* **Peak in Transactions:** Transaction volume peaked in May 2023, with over 264K transactions and a revenue of approximately £13.75M. This period aligns with increased consumer spending due to seasonal trends or promotions.
  
* **Fluctuating Revenue and Transactions:** In 2023, both revenue and transaction counts have shown significant month-to-month volatility. Notably, July and October had spikes, likely influenced by specific events or campaigns, whereas December saw a slight decline in revenue despite holiday season expectations.
  
* **Decline in Average Transaction Volume:** Average Transaction Volume (ATV) has been on a gradual decline, starting from a high of £53 in January to a low of £49 in June, suggesting potential discounts or a shift towards lower-cost purchases.
  
* **Weekly Revenue Trends:** Week-over-Week (WoW) analysis indicates revenue fluctuations with marked dips in February and May, followed by recoveries in March and November. These changes may be influenced by macroeconomic factors or changes in consumer behavior across different periods.

[Visualization specific to category 1]


### Customer Background Analysis:

* **High Revenue from Younger Age Groups:** Customers aged 20-30 generated the highest revenue at 33M, suggesting that younger customers are a significant contributor to the company’s revenue. This could be an area to focus on for targeted marketing strategies.
  
* **High Delinquency Rate:** The delinquency rate stands at 19.88%, indicating that nearly one-fifth of customers have missed payments. This presents a potential risk for the company and may require intervention strategies to reduce defaults.
  
* **Customer Satisfaction Score:** The average customer satisfaction score is 5.47, which suggests moderate satisfaction levels. Improving this score could enhance customer loyalty and long-term retention.
  
* **Educational and Job Profile Distribution:** Customers with a college education represent the largest segment with 30M in revenue, and job types such as teachers and engineers generate high revenues, with each contributing over 24M. Understanding the preferences of these segments can help in tailoring products and services more effectively.

[Visualization specific to category 2]


### Credit Card and Expenditure Category Performance:

* **High Revenue from Gold Card Activations:** Customers with Gold cards who activated within 30 days contributed significantly to revenue, with a total of 61M. This indicates that Gold card customers are highly engaged, especially soon after activation, representing a valuable customer segment.
  
* **Shopping Dominates Expenditure Categories:** Shopping accounts for the majority of revenue share, contributing 60.33%, which is much higher than other categories like Travel (9.95%) and Dining (4.91%). This suggests that customers prioritize shopping-related transactions, and it could be beneficial to focus promotions or rewards on this category.
  
* **Consistent Revenue Growth in Expenditure Categories:** The trend chart shows a steady increase in total revenue across all expenditure categories, with notable peaks in April and October. This consistent growth highlights potential seasonality factors or successful campaigns during these months.
  
* **Platinum Card Spend in Travel and Dining:** Platinum cardholders contributed significantly to revenue in both travel (5.6M) and dining (1.6M) categories. This suggests that Platinum cardholders have unique spending habits and may benefit from targeted offers in these categories to further drive loyalty and spending.

[Visualization specific to category 3]


# Recommendations:

Based on the insights and findings above, the following recommendations have been provided:

* **Focus on High Revenue Customer Segments:** Since the "High Income" group and younger age segments (particularly ages 20-30) generate significant revenue, ABC Inc. should tailor targeted marketing campaigns and product offerings specifically for these groups to enhance engagement and potentially increase spending.
  
* **Enhance Customer Satisfaction:** With a Customer Satisfaction Score of 5.47, there is room for improvement. Consider launching initiatives to improve customer service, offer loyalty programs, or introduce perks for high-value customers to enhance overall satisfaction and retention.
  
* **Promote Card Activation Among Premium Categories:** There is a clear revenue difference between card categories within the first 30 days of activation, with Gold and Platinum cards generating more revenue. ABC Inc. should encourage early card activation by offering incentives like bonus rewards or discounts within the first month for customers in premium categories.
  
* **Optimise Expenditure Focus:** The pie chart shows that "Shopping" constitutes the largest share of revenue by expenditure type. ABC Inc. can focus on expanding partnerships or offering targeted promotions in this category to maximize revenue while considering strategies to boost lower-performing categories such as "Dining" and "Travel."

* **Monitor and Address Delinquency Rate:** With a delinquency rate of nearly 20%, ABC Inc. should implement strategies to manage credit risk better. This might include revisiting credit limits, offering support to delinquent accounts, or creating financial education initiatives to encourage timely payments, which could ultimately reduce financial losses.
  


# Assumptions:

Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

* **Card Activation within 30 Days:** For the "Card Activation within 30 Days" metric, it is assumed that all card activations were correctly recorded within the specified time frame. If some activations were delayed or recorded inaccurately, this could skew the analysis of early card engagement, potentially affecting the insights on customer loyalty and usage patterns.




