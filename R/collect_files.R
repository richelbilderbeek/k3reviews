#' Collects all the filenames in inst/extdata
#' @return all filenames in inst/exdata
#' @examples
#'   filenames <- collect_files()
#'   testit::assert(length(filenames) > 200)
#' @author Richel Bilderbeek
#' @export
collect_files <- function() {
  filename <- K3Reviews::find_path("HeyahMama.md")
  folder_name <- dirname(filename)
  return (list.files(path = folder_name))
}
