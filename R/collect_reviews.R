#' Collects all the reviews' filenames
#' @return all reviews' filenames
#' @examples
#'   filenames <- collect_reviews()
#'   testit::assert(length(filenames) > 100)
#'   testit::assert(is_review(filenames[1]))
#' @author Richel Bilderbeek
#' @export
collect_reviews <- function() {

  filenames <- collect_files()
  return (filenames[are_reviews(filenames) ])
}