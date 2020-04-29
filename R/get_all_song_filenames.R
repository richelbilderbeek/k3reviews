#' Get all the songs' filenames
#' @export
get_all_song_filenames <- function() {
  list.files(
    path = system.file("extdata", package = "k3reviews"),
    pattern = "*.md",
    full.names = TRUE,
    recursive = FALSE
  )
}
