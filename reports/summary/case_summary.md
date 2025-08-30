# Bellabeat Case Study — Google Data Analytics Capstone  
**Author:** Samedin Ercan Onur  
**Contact:** ercan_samedin@yahoo.com  

---

## Business Question  
What trends can we see in smart-device usage that could help Bellabeat improve customer engagement?

---

## Data & Tools  
- Public Fitbit-style dataset (daily activity, sleep, calories, steps)  
- Cleaned in **Excel** (removed duplicates, fixed dates, checked totals)  
- Basic queries in **SQL** to group by weekday  
- Simple visuals in **R (ggplot2)** and Excel charts  

---

## Steps I Took (Process)  
1. Imported CSVs into Excel and BigQuery  
2. Checked for duplicates and missing values  
3. Created new columns (active minutes = very + fairly active)  
4. Summarized steps, calories, and sleep by weekday  
5. Exported summary tables to CSV for R  
6. Made bar charts and scatterplots  

---

## Key Findings  
- **Average daily steps:** ~6,500; only ~28% of days reach 10k steps  
- **Calories vs activity:** more active minutes → more calories burned  
- **Weekday pattern:** highest steps mid-week, lowest on weekends  
- **Sleep:** average ~6.5 hours; about half the days are below 7 hours  

(See `reports/figures/` for charts)  

---

## Recommendations (Simple & Actionable)  
- Add **daily step reminders** when users are close to 7.5k–10k steps  
- Suggest **bedtime reminders** if average sleep <7h  
- Show **weekly step streaks** to motivate consistency  
- Create a **2-week onboarding challenge** to help new users build healthy habits  
