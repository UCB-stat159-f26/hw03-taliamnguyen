#' Retrieve a player's career match data
#'
#' @param name Player name.
#' @return Cleaned data frame of career matches.
#' @export
career_data <- function(name) {
  tf <- download_career_js(name)
  x <- parse_career_js(tf)

  if (ncol(x) == 27) {
    return(clean_female_data(x))
  }

  if (ncol(x) == 47) {
    return(clean_male_data(x))
  }

  stop("Unexpected career data format.")}
