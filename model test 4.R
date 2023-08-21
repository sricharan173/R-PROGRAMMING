data <- data.frame(
  name = c("Charan", "Sai", "Manoj", "Purna"),
  score = c(85, 92, 78, 88)
)
sort_dataframe <- function(df) {
  sorted_df <- df[order(df$name, df$score), ]
  return(sorted_df)
}
sorted_data <- sort_dataframe(data)
print(sorted_data)
