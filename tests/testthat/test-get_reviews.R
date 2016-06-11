context("get_reviews")


test_that("get_reviews works", {
  df <- get_reviews()

  for (i in seq(1, nrow(df))) {
    row <- df[i, ]
    if (row$grade < 0.0 || row$grade > 10.0) {
      print(row)
    }
    expect_equal(row$grade >=  0.0, TRUE)
    expect_equal(row$grade <= 10.0, TRUE)
  }
})
