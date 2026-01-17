# Example R script for host-stratified ARG summaries

library(dplyr)

df <- read.csv("arg_summary_by_host.csv")

host_summary <- df %>%
  group_by(host) %>%
  summarise(total_occurrences = sum(occurrences))

write.csv(host_summary, "host_arg_totals.csv", row.names = FALSE)
