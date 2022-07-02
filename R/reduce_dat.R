#' Reduce data to only columns of interest
#'
#' @param dat a data frame
#' @param cols a numeric vector of column positions
#'
#' @return a data frame
#' @export
#'
#' @examples
#' reduce_dat(fruit, 1:2)
reduce_dat <- function(dat, cols){
  dat[ , cols]
}
