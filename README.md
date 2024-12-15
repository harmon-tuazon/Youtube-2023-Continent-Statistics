![image](https://github.com/user-attachments/assets/5a90e3e0-3a27-4dfa-970d-d7601d8f2806)# Youtube 2023 Continent Statistics

## Context
In this personal project, I analyzed global trends and content performance using a public dataset from Kaggle. Focusing on metrics like views, subscribers, and revenue rates, I uncovered insights into how the platform performed across the globe. To achieve this, I used tools like Power BI and SQL to perform data cleaning, visualization, and analysis. This project highlights my ability to identify patterns, uncover growth opportunities, and present actionable insights. 

It is the aim of this project to reflect my capacity to transform raw data into meaningful narratives, aligning with the key responsibilities of a data analyst in data driven decision-making.

## Process Flow 
1. SQL for Data Normalization and Exploration
  * First, I used SQL to normalize and organize the dataset, making it more structured and efficient for analysis. Although the raw data from the source is already quite structured and flat, SQL’s powerful  capabilities allowed me to not only normalize data efficiently but also do quick data exploration. 
    
2. Power Query for Data Cleaning
  * Next, I utilized Power Query to handle common data quality tasks like removing duplicates, filling missing values, and reformatting data. I chose Power Query for its user-friendly interface and seamless integration with Power BI, ensuring an efficient workflow. Moreover, it's built in automation capabilities will allow all visualizaitons up to date regardless of any updates done to the data source. 
    
3. Power BI for Visualization
  * Lastly, using Power BI, I created interactive dashboards and visualizations to present the data. I have opted to use Power BI for its advanced visual capabilities and ability to connect directly to cleaned datasets (i.e. Power Query), making data easier to interpret and share.

## Data Normalization 
In this phase of the project, I executed the following tasks using SQL:
- Standardized Formats: Ensured that the data is in a consistent format (e.g., dates, currencies, or string cases) across the dataset.

Output for this section: 
- [Global_YouTube_Statistics_2023.sql](https://github.com/harmon-tuazon/Youtube-2023-Continent-Statistics/blob/main/SQL%20Files/Global_YouTube_Statistics_2023.sql)


## Data Exploration
In this phase of the project, I executed the following tasks using SQL:
- Filtering and Sorting: Queried data based on specific conditions to focus on a per continent level of analysis.
- Summarizing Data: Used SQL queries to calculate key aggregates like sums, averages, and counts to get an overview for each continent.


Output for this section: 
- [Continent YouTube Stats Percent Share.sql](https://github.com/harmon-tuazon/Youtube-2023-Continent-Statistics/blob/main/SQL%20Files/Continent%20YouTube%20Stats%20Percent%20Share.sql)
- [Continent YouTube Statistics.sql](https://github.com/harmon-tuazon/Youtube-2023-Continent-Statistics/blob/main/SQL%20Files/Continent%20YouTube%20Statistics.sql)
- [Top 10 Countries YT Statistics 2023.sql](https://github.com/harmon-tuazon/Youtube-2023-Continent-Statistics/blob/main/SQL%20Files/Top%2010%20Countries%20YT%20Statistics%202023.sql)
- [Channel Type YT Statistics 2023.sql](https://github.com/harmon-tuazon/Youtube-2023-Continent-Statistics/blob/main/SQL%20Files/Channel%20Type%20YT%20Statistics%202023.sql)

Note that output for each query can be viewed as CSV files within the CSV files folder included in this repo. 

## Data Cleaning 
In this phase of the project, I executed the following tasks using Power Query:
- Removing Duplicates:  Identified and eliminated duplicate records to maintain data accuracy.
- Handling Missing Values: Filled in missing data using techniques like using  or removed rows/columns with excessive missing values if they impacted the analysis.
- Correcting Errors: Fixed typos, misclassifications, or incorrect values in the dataset.

## Data Modeling 
In this phase of the project, I executed the following tasks using Power BI:
- Created Measures and Calculations: Defined calculated fields and used aggregation functions like sum, average, and count to generate insights directly in the model. Examples include: a measure to capture the user selected Key Performance Indicator from a slicer and return the corresponding Metric. 
- Established Relationships Between Tables: Connected tables via primary and foreign keys to enable data analysis across different tables.

Output for this section: 
![Screenshot 2024-11-30 182041](https://github.com/user-attachments/assets/9073fb5a-aab2-4b01-a6c1-bebd0eed37e9)

## Data Visualizationz
In this phase of the project, I executed the following tasks using Power BI:
- Built Charts and Graphs: Used various chart types, such as bar charts, line graphs, pie charts, etc. to visually represent key metrics per continent. 
- Created Dashboards: Designed interactive portions of the dashboard using slicers. Slicers allow report users/viewers to select which Key Performance Indicator they want to focus on.

Output for this section: 
![Screenshot 2024-11-30 181924](https://github.com/user-attachments/assets/62fc005b-8972-48f4-8b50-fb2752d6b6a3)
![image](https://github.com/user-attachments/assets/975919ac-2d91-4ff9-a072-7de255f42afe)


## Analysis & Conclusion

Summary of Data:
- Revenue
   - Asia leads all regions with the highest performance at 40.25%, though it is still below target and while North America contributes 33.35% and is the second-highest performer.
- Subscribers & Total View
   - Surprisingly, even though Asia comes up on top in terms of Revenue, North America still enjoys the number one spot when it comes to number of subscribers (8.54 M) and views (4.1 M). Asia's performance for these two metrics are as follows: subscribers (6.9 M) and views (3.5 M). This goes againts the usual convention that more subscribers and views directly translate to more revenues. 
- Uploads:
   - With regards to this metric, Asia (7 M) outperforms North America (1.3M). 

Key Findings from Data:
- Strengths: Asia and North America drive most of the performance.
- Weaknesses: Performance in Europe, South America, and smaller continents remains below expectations.
- Opportunities: Focus on closing performance gaps in Asia and North America. Invest in underperforming regions like Africa and Australia/Oceania to unlock potential growth.
