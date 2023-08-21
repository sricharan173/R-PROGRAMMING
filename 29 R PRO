data("iris")

# Step 1
print(dim(iris))
print(str(iris))
print(summary(iris))
print(apply(iris[, 1:4], 2, sd))

# Step 2
mean_by_species <- aggregate(. ~ Species, data = iris, FUN = mean)
print("Mean of features grouped by species:")
print(mean_by_species)

std_dev_by_species <- aggregate(. ~ Species, data = iris, FUN = sd)
print("Standard Deviation of features grouped by species:")
print(std_dev_by_species)

# Step 3
quantiles_sepal_width <- quantile(iris$Sepal.Width, probs = c(0.25, 0.5, 0.75))
quantiles_sepal_length <- quantile(iris$Sepal.Length, probs = c(0.25, 0.5, 0.75))

print(quantiles_sepal_width)
print(quantiles_sepal_length)

# Step 4
quantiles <- quantile(iris$Sepal.Length, probs = c(0, 0.25, 0.5, 0.75, 1))

categorize_sepal_length <- function(sepal_length) {
  if (sepal_length <= quantiles[2]) {
    return("Q1")
  } else if (sepal_length <= quantiles[3]) {
    return("Q2")
  } else if (sepal_length <= quantiles[4]) {
    return("Q3")
  } else {
    return("Q4")
  }
}
iris1 <- iris
iris1$Sepal.Length.Cate <- sapply(iris$Sepal.Length, categorize_sepal_length)
head(iris1)

# step 5
iris$Sepal.Length.Cate <- sapply(iris$Sepal.Length, categorize_sepal_length)

avg_by_categories <- aggregate(. ~ Species + Sepal.Length.Cate, data = iris, FUN = mean)

print("Average value of numerical variables by Species and Sepal.Length.Cate:")
print(avg_by_categories)

# Step 6 
avg_means_by_categories <- aggregate(. ~ Species + Sepal.Length.Cate, data = iris,
                                     FUN = function(x) mean(x, na.rm = TRUE))

# Print the mean of average values
print("Average mean value of numerical variables by Species and Sepal.Length.Cate:")
print(avg_means_by_categories)

# step 7
pivot_table <- iris %>% group_by(Species, Sepal.Length.Cate) %>% summarise(mean_Sepal.Width = mean(Sepal.Width, na.rm = TRUE),
            mean_Petal.Length = mean(Petal.Length, na.rm = TRUE),
            mean_Petal.Width = mean(Petal.Width, na.rm = TRUE))

# Print the pivot table
print("Pivot Table based on Species and Sepal.Length.Cate:")
print(pivot_table)
