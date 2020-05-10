test_that("use", {
  expect_silent(check_formation("KKK"))
  expect_silent(check_formation("JKK"))
  expect_silent(check_formation("HKM"))
  expect_silent(check_formation(NA, na_is_ok = TRUE))

  expect_error(check_formation(NA, na_is_ok = FALSE))
  expect_error(check_formation("3JS"))
  expect_error(check_formation(""))
  expect_error(check_formation(NULL))
  expect_error(check_formation(3.14))
})
