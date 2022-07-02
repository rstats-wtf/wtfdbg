#' Compute average characteristics for identified fruit
#'
#' @param dat a data frame
#' @param pattern character string of pattern to identify fruits of interest
#'
#' @return a named numeric vector with average characteristics for identified fruit
#' @export
#'
#' @examples
#' fruit_avg(fruit, "berry")
fruit_avg <- function(dat, pattern) {
  cols <- find_cols(dat, pattern)
  mini_dat <- reduce_dat(dat, cols)
  message_fruit(mini_dat)
  compute_avg(mini_dat)
}

