#' Plot a player's career matches
#'
#' @param data Cleaned career data frame.
#' @return Scatter plot of opponent age over time.
#' @export
plot_career <- function(data) {
  ggplot2::ggplot(data, ggplot2::aes(x = date, y = opponent_age,
                                     color = result)) +
    ggplot2::geom_point() +
    ggplot2::labs(
      x = "Date",
      y = "Opponent age",
      color = "Result"
    ) +
    ggplot2::theme_minimal()
}
