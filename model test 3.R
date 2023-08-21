data(airquality)
mean_temp <- sum(airquality$Temp, na.rm = TRUE) / length(airquality$Temp)
cat("Mean Temperature:", mean_temp, "\n")
first_five_rows <- head(airquality, n = 5)
print(first_five_rows)
subset_data <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
print(subset_data)
coldest_day <- airquality$Day[which.min(airquality$Temp)]
cat("Coldest Day:", coldest_day, "\n")
