test_that("one rating", {
  df <- get_song_ratings(
    song_filename = get_song_path("FransLiedje.md")
  )
  expect_equal(
    8,
    df[df$formation == "KKK" & df$reviewer == "Richel", ]$rating
  )
})

test_that("no rating", {
  expect_true(
    all(
      is.na(
        get_song_ratings(get_song_path("PuppyLove.md"))$rating
      )
    )
  )

})

test_that("two formations with different rating", {
  df <- get_song_ratings(
    song_filename = get_song_path("Verliefd.md")
  )
  expect_equal(
    9,
    df[df$formation == "KKK" & df$reviewer == "Richel", ]$rating
  )
  expect_equal(
    8,
    df[df$formation == "HKM" & df$reviewer == "Richel", ]$rating
  )
})
