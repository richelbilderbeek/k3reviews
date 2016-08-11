context("are_reviews")

test_that("are_reviews: use", {
  filenames <- c("HeyahMama.md", "Verliefd.md", "Verliefd.jpg")
  expected <- c(TRUE, TRUE, FALSE)
  expect_true(all(are_reviews(filenames) == expected))
})
