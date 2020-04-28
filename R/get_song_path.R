#' Get the path of a song's name
#' @inheritParams default_params_doc
get_song_path <- function(song_name) {
  full <- system.file("extdata", song_name, package = "K3Reviews")
  if (!file.exists(full)) {
    stop("'filename' must be the name of a file in 'inst/extdata'")
  }
  full
}
