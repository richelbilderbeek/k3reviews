#' Check if the formation is valid
#' @inheritParams default_params_doc
#' @examples
#' check_formation("KKK")
#' check_formation("JKK")
#' check_formation("HKM")
#' check_formation(NA, na_is_ok = TRUE)
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
    stop("'", formation, "' is an invalid 'formation'")
  }
}
