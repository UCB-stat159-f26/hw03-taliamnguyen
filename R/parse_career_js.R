parse_career_js <- function(path) {
  lines <- readLines(path, warn = FALSE)
  text <- paste(lines, collapse = "\n")
  text <- sub("^.*?morematchmx\\s*=\\s*", "", text)
  text <- sub(";?\\s*$", "", text)

  rows <- jsonlite::fromJSON(text, simplifyVector = FALSE)
  rows <- lapply(rows, unlist)

  do.call(rbind, rows)}
