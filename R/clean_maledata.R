clean_male_data <- function(x) {
  data.frame(date = as.Date(x[, 1], "%Y%m%d"),
             opponent = x[, 12],
             opponent_age = as.numeric(x[, 17]),
             result = x[, 5],
             stringsAsFactors = FALSE)}
