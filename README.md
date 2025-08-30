# Bellabeat Case Study — Google Data Analytics Capstone

Hi! I'm Samedin Ercan Onur, an aspiring junior data analyst. This repo contains **my** version of the Bellabeat case study. It walks through the full data analysis lifecycle — Ask, Prepare, Process, Analyze, Share, Act — and produces business-ready recommendations.


## Business Task (Ask)
Identify simple, actionable usage patterns that Bellabeat could use to encourage healthier activity and app engagement.

**Stakeholders**: Urška Sršen (Cofounder & CCO), Sando Mur (Cofounder), and the Bellabeat Marketing Analytics team. fileciteturn0file0

## Data Source (Prepare)
- Public Fitbit fitness tracker data (sample).
- Kaggle dataset: https://www.kaggle.com/datasets/arashnic/fitbit 
- Time period & granularity: daily activity, sleep, heart rate (where available).  
- Data quality notes: small sample size, possible self-reporting bias, limited demographics.

## Tools
- **Excel**  
- **SQL** 
- **R** 

## Process
1. Import files; verify columns and types.
2. Remove duplicates, handle missing values.
3. Join daily activity with sleep where possible.
4. Create simple metrics: steps/day, active minutes/day, calories/day.
5. Visualize trends by weekday and activity level.

## Analysis (Key Findings)
- Users are most active on **Wednesday (~7,511 steps on average)**; steps drop on **Tuesday (~4,915)**.
- Higher **active minutes** are associated with higher **calories burned**.
- Users with **consistent sleep** tend to show **more stable activity**.
- Correlation between activity and calories is ≈ 0.58 (moderate) 
- Average dailiy acyivity is ~6,547 ; 27.8% of days hit 10k+ steps 

## Share
- Simple charts in `reports/figures/`  
- Summary in `reports/summary/case_summary.md`

## Act (Recommendations)
- In-app nudges for low-activity weekdays.
- Weekly step goal reminders + streak badges.
- Bedtime reminders
- Sleep suggestions when weekly average <7 h
- 2 weeks trial for new joiners to build a habit using the app

  ## Repo Structure
- `data/processed/` sample cleaned CSVs  
- `SQL/` basic queries  
- `R/` cleaning + EDA scripts  
- `reports/figures/` charts, `reports/summary/` executive summary
