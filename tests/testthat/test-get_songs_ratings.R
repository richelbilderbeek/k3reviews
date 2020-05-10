test_that("use", {
  expect_silent(
    get_songs_ratings(
      song_filenames = get_all_song_filenames()
    )
  )
})
