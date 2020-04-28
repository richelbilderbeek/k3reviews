#' Get Richel's rating
#' @inheritParams default_params_doc
#' @export
get_richels_rating <- function(song_filename) {
  k3reviews::get_rating(
    reviewer_name = "Richel",
    song_filename = song_filename
  )
}

