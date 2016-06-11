context("get_discography")

test_that("get_discography use", {
  df <- get_discography()
  expect_equal(names(df), c("cd_title", "track_number", "song_name"))
})
