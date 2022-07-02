#' Compute average characteristics for identified fruit
#'
#' @param mini_dat a data frame
#'
#' @return a named numeric vector
#' @export
#'
#' @examples
#' compute_avg(fruit)
compute_avg <- function(mini_dat){
  rowMeans(mini_dat)
}

