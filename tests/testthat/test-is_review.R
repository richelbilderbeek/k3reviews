context("is_review")

test_that("is_review: use", {
  expect_true(is_review("HeyahMama.md"))
  expect_true(is_review("Verliefd.md"))
  expect_false(is_review("Verliefd.jpg"))
})
