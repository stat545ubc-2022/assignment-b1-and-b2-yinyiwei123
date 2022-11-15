#' @title Mean and Median
#' @description  this function is designed to calcuate and display the mean and median at thes same time
#' @param data is the numeric data or dataset thaat we will use
#' @param mean is the calculated mean of the data
#' @param median is the calculated medican of the data
#' @return the new phase with mean and median
#' @examples
#' library(palmerpenguins)
#' mean_median_body_mass<-mean_median(penguins$body_mass_g)
#' @export

mean_median<- function(data) {
  if(!is.numeric(data)){
    stop("the function only works for numeric input")
  }
  mean<-mean(data,na.rm = T)
  median<- median(data,na.rm = T)
  print(c(mean,median))
}
