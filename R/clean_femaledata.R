clean_female_data <- function(x) {
  data.frame(date = as.Date(x[, 1], "%Y%m%d"),
             opponent = x[, 12],
             opponent_age = as.numeric(format(as.Date(x[, 1], "%Y%m%d"), "%Y")) -
                            as.numeric(substr(x[, 17], 1, 4)),
             result = x[, 5],
             stringsAsFactors = FALSE)}
