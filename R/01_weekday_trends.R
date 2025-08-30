library(readr)
library(dplyr)
library(ggplot2)

wt <- read_csv("reports/summary/weekday_trends.csv", show_col_types = FALSE)
# Pre-checks
wt <- wt %>%
  mutate(
    weekday_label = factor(weekday_label, levels = c("Sun","Mon","Tue","Wed","Thu","Fri","Sat")),
    weekday_num   = as.integer(weekday_num)
  ) %>%
  arrange(weekday_num)

# Average Steps by Weekday 
p_steps <- ggplot(wt, aes(x = weekday_label, y = avg_steps)) +
  geom_col() +
  labs(title = "Average Steps by Weekday",
       x = "Weekday", y = "Avg Steps")
dir.create("reports/figures", recursive = TRUE, showWarnings = FALSE)
ggsave("reports/figures/avg_steps_by_weekday.png", p_steps, width = 7, height = 4, dpi = 120)

# Average Active Minutes by Weekday 
p_active <- ggplot(wt, aes(x = weekday_label, y = avg_active_minutes)) +
  geom_col() +
  labs(title = "Average Active Minutes by Weekday",
       x = "Weekday", y = "Avg Active Minutes")
ggsave("reports/figures/avg_active_minutes_by_weekday.png", p_active, width = 7, height = 4, dpi = 120)

# Calories by Weekday 
p_cal <- ggplot(wt, aes(x = weekday_label, y = avg_calories)) +
  geom_col() +
  labs(title = "Average Calories by Weekday",
       x = "Weekday", y = "Avg Calories")
ggsave("reports/figures/avg_calories_by_weekday.png", p_cal, width = 7, height = 4, dpi = 120)

# Insights
best_steps <- wt$weekday_label[which.max(wt$avg_steps)]
worst_steps <- wt$weekday_label[which.min(wt$avg_steps)]
best_active <- wt$weekday_label[which.max(wt$avg_active_minutes)]

dir.create("reports/summary", recursive = TRUE, showWarnings = FALSE)
cat(
  "- Steps peak on **", as.character(best_steps), "** and are lowest on **", as.character(worst_steps), "**.\n",
  "- The most active day (by minutes) is **", as.character(best_active), "**.\n",
  file = "reports/summary/weekday_notes.md", sep = ""
)


