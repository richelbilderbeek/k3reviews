#' Get Mark's rating
#' @inheritParams default_params_doc
#' @export
get_marks_rating <- function(song_filename) {
  k3reviews::get_rating(reviewer_name = "Mark", song_filename)
}

