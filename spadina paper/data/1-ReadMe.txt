**Replication Documentation**

**Title:** Replication Data and Code for "Hate Crimes and Gender Imbalances: Fears over Mate Competition and Violence against Refugees"  
**Journal:** American Journal of Political Science  
**Authors:** Rafaela Dancygier, Naoki Egami, Amaney Jamal, Ramona Rischke  

**Operating Environment:**
- **Operating System:** Windows 11 Home
- **Device:** ASUS TUF Dash F15
- **Processor:** 12th Gen Intel(R) Core(TM) i5-12450H   2.00 GHz
- **Memory:** 16.0 GB (15.6 GB usable) DDR4
- **Software:** R version 4.0.2

**LLM Usage:**

In conducting this research, it is important to note that no Large Language Models (LLMs) were utilized. The analysis and findings presented in this paper were generated without the assistance of LLMs or any auto-complete tools such as co-pilot. The research process relied solely on conventional data analysis techniques and methodologies. By excluding the use of LLMs, I aimed to ensure transparency and reproducibility in our research methodology.

**R Packages Used:**

readstata13: Used for reading Stata data files (*.dta).
MASS: Provides functions and datasets for the book "Modern Applied Statistics with S" by Venables and Ripley. Widely-used for statistical modeling.
sandwich: Utilized for computing robust covariance matrix estimators.
lmtest: Provides diagnostic tests for linear regression models.
pBrackets: Used for drawing paired/matched brackets.
stargazer: Employed for creating well-formatted regression tables.
Base R functions and built-in functions: Additionally, standard R functions and other built-in functions are utilized throughout the analysis.

**Description:**

This documentation outlines the process and files utilized to replicate the analysis presented in "Hate Crimes and Gender Imbalances: Fears over Mate Competition and Violence against Refugees" published in the American Journal of Political Science. The replication process involves the usage of various R scripts and datasets provided by the authors.

**Files Used:**
- **context.dta:** Main analysis data for context analysis
- **survey.dta:** Main analysis data for survey analysis
- **Help.R:** R code containing custom functions used for analyses
- **MyGraphsAndTables.R:** Main R script used to generate figures and tables, integrating other files for analysis

**Analysis Components:**
- **Figures:** 4 figures were generated using the provided data and scripts.
- **Table:** 1 table was produced as part of the analysis.

**Procedure:**

1. **Preparation:**
   - Ensure all provided files are available in the working directory.
   - Install necessary R packages as mentioned in the documentation.

2. **Data Loading:**
   - Load the datasets `context.dta` and `survey.dta` into R environment for analysis.

3. **Code Execution:**
   - Execute the `Help.R` script to load custom functions and utilities required for analysis.
   - Run `MyGraphsAndTables.R` script to initiate the analysis process.

4. **Analysis Output:**
   - Figures and tables will be generated as specified in the `MyGraphsAndTables.R` script.
   - The output will include visualizations and statistical summaries based on the provided data.

**Output Files:**
- The output will consist of figures and tables in various formats (e.g., PDF) as specified by the analysis script.


