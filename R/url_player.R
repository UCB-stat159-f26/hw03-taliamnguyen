url_player <- function(name) {
  paste0(
    "https://www.tennisabstract.com/cgi-bin/player.cgi?p=",
    normalize_player_name(name)
  )
}
