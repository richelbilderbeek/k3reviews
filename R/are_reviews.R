#' Are the files reviews?
#' @param filenames names of the files
#' @return a vector of TRUE and FALSE
#' @export
#' @author Richel Bilderbeek
are_reviews <- function(filenames) {
  v <- vapply(
    filenames,
    is_review,
    FUN.VALUE = TRUE
  )
  v
}
