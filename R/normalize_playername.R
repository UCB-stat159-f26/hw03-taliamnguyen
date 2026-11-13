normalize_player_name <- function(name) {
  name <- trimws(name)
  name <- gsub("\\s+", " ", name)

  if (grepl(" ", name)) {
    parts <- strsplit(name, " ")[[1]]
    return(paste0(tools::toTitleCase(parts[1]),
                  tools::toTitleCase(parts[2])))}

  tools::toTitleCase(name)
}
