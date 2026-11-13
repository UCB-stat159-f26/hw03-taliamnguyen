test_that("female career JS is parsed", {
  path <- system.file("extdata",
                      "FemalePlayerCareer.js",
                      package = "tenniscareer")

  x <- parse_career_js(path)

  expect_equal(nrow(x), 3)
  expect_equal(ncol(x), 27)})

test_that("male career JS is parsed", {
  path <- system.file("extdata",
                      "MalePlayerCareer.js",
                      package = "tenniscareer")

  x <- parse_career_js(path)

  expect_equal(nrow(x), 3)
  expect_equal(ncol(x), 47)})
