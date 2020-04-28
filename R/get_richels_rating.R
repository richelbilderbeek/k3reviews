#' Get Richel's rating
#' @inheritParams default_params_doc
#' @export
get_richels_rating <- function(song_filename) {
  K3Reviews::get_rating(
    reviewer_name = "Richel",
    song_filename = song_filename
  )
}

