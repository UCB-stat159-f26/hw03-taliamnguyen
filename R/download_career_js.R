download_career_js <- function(name) {
  player <- normalize_player_name(name)
  url <- paste0(
    "https://www.tennisabstract.com/jsmatches/",
    player,
    "Career.js"
  )
  tf <- tempfile(fileext = ".js")

  tryCatch(
    utils::download.file(url, tf, quiet = TRUE),
    error = function(e) {
      stop("Could not retrieve player data.")
    }
  )

  tf
}
