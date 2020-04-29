test_that("use", {
  expect_equal(
    "KKK", get_formation(get_song_path("FransLiedje.md"))
  )
  expect_equal(
    "JKK",
    get_formation(get_song_path("EnIkDans.md"))
  )
  expect_equal(
    "HKM",
    get_formation(get_song_path("10000Luchtballonnen.md"))
  )
  expect_equal(
    "KKK", get_formation(get_song_path("12DoeMetMeMee.md"))
  )
  expect_equal(
    "KKK", get_formation(get_song_path("AliBaba.md"))
  )
  expect_equal(
    "KKK", get_formation(get_song_path("BabyComeBack.md"))
  )

})
