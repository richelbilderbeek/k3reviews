#' This function does nothing. It is intended to inherit is parameters'
#' documentation.
#' @param reviewer_name name of the reviewer, e.g. \code{Richel}
#' @param song_name name of the K3 song
#' @param song_filename path to a song's review file
#' @param song_filenames paths to one or more song's review files
#' @param verbose set to TRUE for more output
#' @author Richèl J.C. Bilderbeek
#' @note This is an internal function, so it should be marked with
#'   \code{@noRd}. This is not done, as this will disallow all
#'   functions to find the documentation parameters
default_params_doc <- function(
  reviewer_name,
  song_name,
  song_filenames,
  song_filename,
  verbose
) {
  # Nothing
}
