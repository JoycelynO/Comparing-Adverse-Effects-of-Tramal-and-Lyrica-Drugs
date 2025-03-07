# Comparing-Adverse-Effects-of-Tramal-and-Lyrica-Drugs

## Project Background
A group of doctors from Germany are exploring the potential adverse effects of drugs used to treat neurological pain. In addition to common treatments like gabapentin and Lyrica, they have found Tramal to be an effective option. Since these medications have similar effects, the doctors are interested in comparing their adverse effects. This comparison would help them choose the drug with fewer adverse effects for each patient, leading to better treatment decisions.

Insights would be provided on the following key areas:

1. What are the 10 most common adverse effects of Tramal as reported in the FAERS database?
2. Compare tramal to another medication called lyrica that is also commonly used to treat neurological pain. Are the adverse effects similar?
3. Define what further investigations might be helpful in determining whether a certain drug might be more preferable over another drug.


## Data Structure
The data is extracted from the FAERS database, which is managed by the FDA in the U.S. The FDA Adverse Event Reporting System (FAERS) collects reports on medication adverse effects and errors. It is used to monitor the safety of drugs and biological therapies after they have been approved for the market.

The FAERS dataset only contains data on a quarterly basis. I utilized the demographic (1.7 mill rows), drugs (7.2 mill rows) and reactions (5.6mill rows) datasets to find the adverse effects of the drugs and merged all four quarters from 2019. 
I imported the relevant datasets into SQL Server and established a connection with Power Query for the data cleaning process. 
Here's a [link](https://fis.fda.gov/extensions/FPD-QDE-FAERS/FPD-QDE-FAERS.html) to the datasets. The SQL queries used to import the datasets to Power Query are also attached.

Key Terms:
- Adverse effect: An unwanted or harmful reaction that occurs after taking a medication or undergoing a medical treatment.
- Primary Suspect: Most likely responsible for the adverse effect.
- Secondary Suspect: May contribute to the adverse effect but isn’t the main cause.
- Interacting: Drug affects how another drug behaves.
- Concomitant: Drug is taken at the same time as other drug but not necessarily related to the reaction.

## Insights

- Gender Differences in Adverse Effects
1. Tramal: Most reported adverse effects come from women (63%), while men account for 27%, and 10% are unknown.

2. Lyrica: Reports are even more skewed, with 72% female, 25% male, and 3% unknown.
   
Women seem to report more adverse reactions for both drugs, which could be due to differences in prescription rates, metabolism, or reporting behaviour.

- Top 3 Brands Reporting Adverse Effects
1. Tramal Adverse Effects Reports:
Most reported adverse effects for Tramal are linked to Pfizer (49%), followed by AstraZeneca (31%) and Novartis (20%).
This could suggest that these pharmaceutical companies may have the highest market share or distribution of Tramal, or their formulations may have a higher likelihood of reported adverse effects.

2. Lyrica Adverse Effects Reports:
Once again, Pfizer dominates the reports for Lyrica, constituting 95% of cases, with AbbVie constituting only 3% and Roche constituting 2%.
This could suggest that Pfizer is the leading manufacturer of Lyrica or that most side effect reports are linked to Pfizer's formulation.

Pfizer appears prominently in both drugs, but it plays a much bigger role in Lyrica reports than in Tramal.
Further investigation could help determine if these trends are due to differences in drug formulation, variation in dosages, or reporting biases.

- Top Adverse Effects
1. Tramal Adverse Effects:
- The most reported issues are drug abuse, toxicity to various agents, and drug dependence.
- This suggests that Tramal has a high potential for misuse and addiction, making it a concern for long-term use.
- The toxicity related reports could also suggest that the overdose of the drug as well as its interaction with other drugs is posing danger to the patient. 

2. Lyrica Adverse Effects:
- The most common issues include pain, drug ineffectiveness, and malaise (general discomfort or unease).
- "Pain" showing up as a top side effect could suggest that some patients may not experience the expected pain relief from Lyrica.
- "Drug ineffective" reports reaffirms the possibility that the medication does not work as intended for all users.
- "Malaise" indicates that patients feel unwell after taking the drug, potentially affecting their overall well-being.

Tramal is associated with addiction risks and toxicity concerns, making its regulation and careful prescription very necessary.
Lyrica may not always provide effective pain relief, leading to patients experiencing continued discomfort or dissatisfaction.
Both drugs require close monitoring to ensure they are used safely and effectively in patients.


![Screenshot 2025-02-19 092521](https://github.com/user-attachments/assets/799b4fce-b47e-47f7-a8de-75d1a0e730c0)


![Screenshot 2025-02-16 185056](https://github.com/user-attachments/assets/dba7f03b-befc-450d-be76-4d79249fde05)


## Logic behind Insight Generation
To determine the top adverse effects of Tramal compared to Lyrica, I filtered the data based on the 'Primary Suspect Drug' role. A drug is classified as a primary suspect when it is the most likely cause of an adverse effect. There were instances where the drugs were labeled as a Secondary Suspect, Interacting or Concomitant Drug. Hence, the need to emphasize adverse effects where Tramal or Lyrica is the most likely cause. Also, some adverse effects were reported when the drugs (Tramal/Lyrica) were taken in combination with other drugs. This affirms the need for further investigation into how drug dosage influences adverse effects. 


## Data Pre-processing

- The datasets contained millions of rows, so I chose to import and store them in a relational database using Microsoft SQL Server. 
- To optimize queries and minimize processing load in Power Query, I loaded the datasets using SQL statements in a filtered and nearly clean state, applying the concept of query folding. This approach ensured that most data processing was handled by SQL Server, with only minimal cleaning required in Power Query. The final dataset for analysis consisted of 401,425 rows and 10 columns. Each record represents the report of an adverse effect.
- In merging the datasets from all 4 quarters, I used the UNION keyword to ensure that duplicates are eliminated.
- After exploring the drugs datasets, I realized that there were multiple names for Tramal. They included Tramadol, Ultram, Contramal, Tramal HCL etc.
Also, tramal was combined with drugs such as Paracetamol. To ensure that all these were included in the filtered data, I used the LIKE keyword in conjunction with the '%' wildcard.  
- The M code for the data cleaning and transformation steps applied on the final dataset in Power Query can be seen below:

![Screenshot 2025-02-16 194127](https://github.com/user-attachments/assets/3c7d1c53-c6b5-476f-9cb0-8464474126f6)
