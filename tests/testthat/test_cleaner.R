test_that("female data is cleaned", {
  path <- system.file(
    "extdata",
    "FemalePlayerCareer.js",
    package = "tenniscareer"
  )

  x <- parse_career_js(path)
  out <- clean_female_data(x)

  expect_equal(nrow(out), 3)
  expect_equal(
    names(out),
    c("date", "opponent", "opponent_age", "result")
  )
  expect_equal(out$result, c("L", "L", "L"))
})

test_that("male data is cleaned", {
  path <- system.file(
    "extdata",
    "MalePlayerCareer.js",
    package = "tenniscareer"
  )

  x <- parse_career_js(path)
  out <- clean_male_data(x)

  expect_equal(nrow(out), 3)
  expect_equal(
    names(out),
    c("date", "opponent", "opponent_age", "result")
  )
  expect_equal(out$result, c("L", "L", "W"))
})
