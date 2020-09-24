#' Get the path of a song's name
#' @inheritParams default_params_doc
#' @examples
#' get_song_path("10000Luchtballonnen.md")
#' @export
get_song_path <- function(song_name) {
  full <- system.file("extdata", song_name, package = "k3reviews")
  if (!file.exists(full)) {
    stop("'filename' must be the name of a file in 'inst/extdata'")
  }
  full
}
