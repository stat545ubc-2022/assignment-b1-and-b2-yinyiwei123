Assignment B1
================
YY
2022-11-02

## Exercise 1: Make a Function

``` r
mean_median<- function(data) {
  if(!is.numeric(data)){
    stop("the function only works for numeric input")
  }
 mean<-mean(data,na.rm = T)
 median<- median(data,na.rm = T)
 print(c(mean,median))
}
```

## Exercise 2: Document your Function

``` r
#' @title Mean and Median
#' this function is designed to calcuate and display the mean and median at thes same time 
#' @param data is the numeric data or dataset thaat we will use
#' @param mean is the calculated mean of the data
#' @param median is the calculated medican of the data
#' @return the new phase with mean and median
```

## Exercise 3: Example

``` r
# for this example: we would like to get the mean and median for the body mass in the penguins database 
mean_median_body_mass<-mean_median(penguins$body_mass_g)
```

    ## [1] 4201.754 4050.000

``` r
print(mean_median_body_mass)
```

    ## [1] 4201.754 4050.000

``` r
# for this example, I would like to show using data class other than numeric data will return in error
mean_median(penguins$species)
```

    ## Error in mean_median(penguins$species): the function only works for numeric input

## Exercise 4: Test

``` r
   mean <- mean(penguins$body_mass_g,na.rm = T) 
   median <- median(penguins$body_mass_g,na.rm = T) 

test_that("equal mean and median for body mass", {
expect_equal(c(mean,median), mean_median(penguins$body_mass_g))})
```

    ## [1] 4201.754 4050.000
    ## Test passed 🥳

``` r
   mean1 <- mean(penguins$bill_length_mm,na.rm = T) 
   median1 <- median(penguins$bill_length_mm,na.rm = T) 
   
test_that("identical mean and median for body mass", {
expect_identical(c(mean1,median1), mean_median(penguins$bill_length_mm))})
```

    ## [1] 43.92193 44.45000
    ## Test passed 🎉

``` r
test_that("error in non-numeric data ", {
expect_error (mean_median(penguins$island))})
```

    ## Test passed 😸
