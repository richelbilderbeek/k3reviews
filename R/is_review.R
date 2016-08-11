#' Is the file a review?
#' @param filename name of the file
#' @return a dataframe
#' @export
#' @author Richel Bilderbeek
is_review <- function(filename) {

  tryCatch(
    find_path(filename),
    error = function(msg) {
      stop(msg)
    }
  )
  if (tools::file_ext(filename) != "md") {
    return(FALSE)
  }
  return(TRUE)
}
