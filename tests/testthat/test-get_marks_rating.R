test_that("use", {
  expect_equal(
    6, get_marks_rating(get_song_path("Beroemd.md"))
  )
  expect_equal(
    0,
    get_marks_rating(get_song_path("EyaHoya.md"))
  )
})
