library(palmerpenguins)

mean <- mean(penguins$body_mass_g,na.rm = T)
median <- median(penguins$body_mass_g,na.rm = T)

test_that("equal mean and median for body mass", {
  expect_equal(c(mean,median), mean_median(penguins$body_mass_g))})

mean1 <- mean(penguins$bill_length_mm,na.rm = T)
median1 <- median(penguins$bill_length_mm,na.rm = T)

test_that("identical mean and median for body mass", {
  expect_identical(c(mean1,median1), mean_median(penguins$bill_length_mm))})

test_that("error in non-numeric data ", {
  expect_error (mean_median(penguins$island))})
