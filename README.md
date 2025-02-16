# Comparing-Adverse-Effects-of-Tramal-and-Lyrica-Drugs

## Project Background
A group of doctors from Germany are exploring the potential side effects of drugs used to treat neurological pain. In addition to common treatments like gabapentin and Lyrica, they have found Tramal to be an effective option. Since these medications have similar effects, the doctors are interested in comparing their adverse effects. This comparison would help them choose the drug with fewer side effects for each patient, leading to better treatment decisions.

Insights would be provided on the following key areas:

1. What are the 10 most common adverse effects of Tramal as reported in the FAERS database?
2. Compare tramal to another medication called lyrica that is also commonly used to treat neurological pain. Are the adverse effects similar?
3. Define what further investigations might be helpful in determining whether a certain drug might be more preferable over another drug.


## Data Structure
The data is extracted from the FAERS database, which is managed by the FDA in the U.S. The FDA Adverse Event Reporting System (FAERS) collects reports on medication side effects and errors. It is used to monitor the safety of drugs and biological therapies after they have been approved for the market.

The FAERS dataset only contains data on a quarterly basis. I utilized the demographic, drugs and reactions datasets to find the adverse effects of the drugs and merged all four quarters from 2019. 
I imported the relevant datasets into SQL Server and establised a connection with Power Query for the data cleaning process. 
Here's a [link](https://fis.fda.gov/extensions/FPD-QDE-FAERS/FPD-QDE-FAERS.html) to the datasets. The SQL queries used to import the datasets to Power Query are also attached.

## Insights

![Screenshot 2025-02-16 184919](https://github.com/user-attachments/assets/4705bea8-c7a4-4d2e-9d3b-b11ecf3b75f3)

![Screenshot 2025-02-16 185056](https://github.com/user-attachments/assets/dba7f03b-befc-450d-be76-4d79249fde05)


## Data Preprocessing

The datasets contained millions of rows, so I chose to import and store them in a relational database using Microsoft SQL Server. To optimize queries and minimize processing load in Power Query, I loaded the datasets using SQL statements in a filtered and nearly clean state, applying the concept of query folding. This approach ensured that most data processing was handled by SQL Server, with only minimal cleaning required in Power Query. The final dataset for analysis consisted of 401,425 rows and 10 columns.

The M code for the data cleaning and transformation steps applied on the final dataset in Power Query can be seen below:

![Screenshot 2025-02-16 194127](https://github.com/user-attachments/assets/3c7d1c53-c6b5-476f-9cb0-8464474126f6)
