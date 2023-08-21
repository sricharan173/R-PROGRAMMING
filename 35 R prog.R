# Load necessary libraries
library(reshape2)

# Load the ChickWeight dataset
data(ChickWeight)

# (i) Order the data frame by weight in ascending order grouped by diet and extract last 6 records
ordered_data <- ChickWeight[order(ChickWeight$weight), ]
last_6_records <- tail(ordered_data, 6)
print(last_6_records)

# (ii) a. Melting based on "Chick", "Time", "Diet" features as ID variables
melted_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))
print(melted_data)

# b. Perform cast function to display the mean value of weight grouped by Diet
mean_weight_by_diet <- dcast(melted_data, Diet ~ ., fun.aggregate = mean, value.var = "value")
print(mean_weight_by_diet)

# c. Perform cast function to display the mode of weight grouped by Diet
library(dplyr)
mode_weight_by_diet <- melted_data %>%
  group_by(Diet) %>%
  summarize(mode_weight = as.numeric(names(table(value))[table(value) == max(table(value))]))
print(mode_weight_by_diet)
