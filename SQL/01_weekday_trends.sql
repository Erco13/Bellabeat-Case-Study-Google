-- Create a summary table with average steps, active minutes, and calories by weekday

CREATE OR REPLACE TABLE `cedar-kiln-348116.Bellabeat_Case_Study_Google.weekday_trends` AS
SELECT
  EXTRACT(DAYOFWEEK FROM ActivityDate) AS weekday_num,   -- 1=Sun, 7=Sat
  CASE EXTRACT(DAYOFWEEK FROM ActivityDate)
    WHEN 1 THEN 'Sun'
    WHEN 2 THEN 'Mon'
    WHEN 3 THEN 'Tue'
    WHEN 4 THEN 'Wed'
    WHEN 5 THEN 'Thu'
    WHEN 6 THEN 'Fri'
    WHEN 7 THEN 'Sat'
  END AS weekday_label,
  COUNT(*) AS days,
  AVG(TotalSteps) AS avg_steps,
  AVG(VeryActiveMinutes + FairlyActiveMinutes) AS avg_active_minutes,
  AVG(Calories) AS avg_calories
FROM `cedar-kiln-348116.Bellabeat_Case_Study_Google.dailyActivity_merged` 
GROUP BY weekday_num, weekday_label
ORDER BY weekday_num;
