#' Check if the formation is valid
#' @inheritParams default_params_doc
#' @examples
#' library(testthat)
#'
#' expect_silent(check_formation("KKK"))
#' expect_silent(check_formation("JKK"))
#' expect_silent(check_formation("HKM"))
#' expect_silent(check_formation(NA, na_is_ok = TRUE))
#' expect_error(check_formation(NA, na_is_ok = FALSE))
#' expect_error(check_formation("3JS"))
#' expect_error(check_formation(""))
#' expect_error(check_formation(NULL))
#' expect_error(check_formation(3.14))
#' @export
check_formation <- function(
  formation,
  na_is_ok = FALSE
) {
  if (length(formation) != 1) {
    stop("'formation' must have one element")
  }
  if (is.na(formation) && !na_is_ok) {
    stop("'NA' is not a valid 'formation'")
  }
  if (!is.na(formation) && !formation %in% c("KKK", "JKK", "HKM")) {
    stop("'", formation ,"' is an invalid 'formation'")
  }
}
