# Kickstarter Crowdfunding Data Analysis Project

## Project Overview

This project focuses on analyzing Kickstarter crowdfunding data to understand project success patterns, funding trends, and key factors influencing campaign performance. The dataset contains over 364,000 records including project categories, locations, funding amounts, and campaign status.


 ## Objectives

To analyze the overall performance of Kickstarter crowdfunding projects using key metrics such as total projects, total pledged amount, and total backers
To evaluate the relationship between goal amount and pledged amount to understand funding efficiency
To identify top-performing projects based on the amount raised and highlight successful campaign characteristics
To analyze project distribution across different categories and determine which categories attract the most projects
To study year-wise trends in project launches to understand growth patterns and peak periods
To examine project performance across different financial quarters to identify seasonal trends
To analyze the geographical distribution of projects and identify regions with higher crowdfunding activity
To evaluate how goal ranges (e.g., < $5000, $5000–$20000) impact project success and participation
To measure audience engagement by analyzing the total number of backers
To build an interactive dashboard that allows users to filter data by state (successful, failed, canceled, live) and explore insights dynamically



 ## Dataset Information

* **Source**: Kickstarter Dataset
* **Total Records**: 364,000+
* **Key Columns**:

**Crowdfunding_Projects** :
   * ID	
   *  State	
   *  Name	
   * Country	
   * Creator_id	
   * Location_id	
   * Category_id	
   * Created_at	
    * Year	
    * Month	
    * Finanacial Month	
    * Quarter	
    * Financial_Quarter		
    * Successful_at	
* Goal	
   * Static_USD_Rate	
    * Goal_Amount	
   * Goal_Range	
   * Pledged	
   * Pledged_Amount_USD	
   * Currency	
* Backers_count	
    * No_of_days_for_Completion	
    * Funding_Percentage

**Location** :
    * Location_id	
   * Display_Name	
   * Type	
    * Location_Name	
   * Location_State	
   * Short_Name	
    * Country

**Creator**:
    * Creator_id	
   * Creator_Name

**Category**:
    *Category_id	
    *Category_Name	
    *Parent_id	
    *Position

			
## Data Cleaning & Preparation

To ensure accurate and reliable analysis, the dataset was thoroughly cleaned and transformed using the following steps:

**Data Cleaning :**

* Removed duplicate records to maintain data integrity
* Eliminated unnecessary columns that were not relevant for analysis
* Handled missing/null values using appropriate techniques
* Removed blank entries to improve data quality
* Converted date columns into proper datetime format



**Data Transformation & Feature Engineering :**

Created several calculated columns to enhance analysis:

* Year → Extracted from `created_at`
* Month → Extracted from `created_at`
* Financial Month → Derived from `created_at` based on fiscal calendar
* Quarter → Derived from `created_at`
* Financial Quarter → Created using fiscal year logic


**Calculated Metrics :**

* Goal Amount (USD) → Converted using Goal and Static USD Rate
* Pledged Amount (USD) → Standardized funding values
* Number of Days for Completion → Calculated using `created_at` and `successful_at`
* Funding Percentage → (Pledged Amount USD / Goal Amount) × 100


## Tools & Technologies Used

* Microsoft Excel
* Power BI
* Tableau
* SQL 



## Data Modeling

* Connected multiple tables using relationships
* Created a data model for better analysis
* Used primary & foreign keys to join datasets



## Key KPIs (Key Performance Indicators)

The following KPIs were used to evaluate the performance of Kickstarter crowdfunding projects:

**Overall KPIs :**

Total Number of Projects: 364.21K

Total Goal Amount: $15.74 Billion

Total Pledged Amount (USD): $3.84 Billion

Total Backers Count: 44.33 Million

Average Number of Days for Completion: 22.45 Days

**Analytical KPIs :**

Projects by Category → Identifies most active and high-performing categories

Projects by Year → Helps analyze growth trends over time

Projects by Location → Shows geographical distribution of campaigns

Projects by Goal Range (%) → Evaluates impact of funding targets

Backers Count Analysis → Measures user engagement across categories, locations, and time

Amount Raised Analysis → Compares funding performance across different segments

Funding Percentage Analysis → Identifies which segments are closest to achieving their goals


## Dashboard Features

The dashboard was designed using multiple tools (Excel, Power BI, and Tableau) with interactive features to enhance data exploration and user experience.


**Excel Dashboard Features**

 * Used **Slicers** for dynamic filtering
 * Filters included:

  * State (Successful, Failed, etc.)
  * Year
  * Month
  * Financial Month
  * Quarter
  * Financial Quarter
    
* Enabled quick and interactive data analysis



**Power BI Dashboard Features**

* Implemented **State Slicer** for filtering project status
* Designed KPI cards for key metrics
* Created interactive visualizations for better insights



**Tableau Dashboard Features**

* Created calculated **metric**:

  * Amount Raised
  * Backers Count
  * Funding Percentage

* Implemented **Time Parameter** to switch between:

  * Month
  * Quarter
  * Financial Month
  * Financial Quarter

* Added **State Filter** for dynamic analysis



 ## Key Insights

**Highest Projects by Location**: → *United States* has the highest number of projects

**Top Category**: → *Product Design* has the maximum number of projects

**Peak Month for Project Creation**: → July recorded the highest projects (35,905)

**Top Project by Backers**: → *Exploding Kittens* received the highest number of backers

**Top Project by Amount Raised**: → *Pebble Time – Awesome Smartwatch, No Compromises* raised the highest funds

**Top Project by Funding Percentage**: → *VULFPECK – The Beautiful Game* achieved the highest funding percentage

**Projects Rate by Goal Range**: → Projects with goal less than $5000 have the highest success percentage


## Challenges Faced

* Handling large dataset
* Cleaning inconsistent data
* Managing multiple file connections



## Learnings

* Improved data cleaning skills
* Learned data modeling concepts
* Gained hands-on experience in dashboard creation
* Developed analytical thinking



## Conclusion

This project provides meaningful insights into crowdfunding trends and helps understand what makes a project successful.



## Author

**Mrunali Sapkal**

* 📧 Email: mrunalisapkal34@gmail.com
* 🔗 LinkedIn: www.linkedin.com/in/mrunali-sapkal-a8b4211b2


