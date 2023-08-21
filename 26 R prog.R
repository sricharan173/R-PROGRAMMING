# Load the built-in dataset airquality
data("airquality")

# Check if airquality is a data frame
if (is.data.frame(airquality)) {
  print("airquality is a data frame.")
} else {
  print("airquality is not a data frame.")
}

# Order the data frame by the first and second column
ordered_airquality <- airquality[order(airquality$Month, airquality$Day), ]

# Remove variables 'Solar.R' and 'Wind'
cleaned_airquality <- ordered_airquality[, !(names(ordered_airquality) %in% c('Solar.R', 'Wind'))]

# Display the cleaned data frame
print("Cleaned data frame:")
print(cleaned_airquality)
