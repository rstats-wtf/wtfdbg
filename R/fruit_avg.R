#' Find columns matching a pattern
#'
#' @param dat a data frame
#' @param pattern character string of pattern to identify
#'
#' @return a numeric vector of column positions
#'
#' @examples
#' find_cols(fruit, "berry")
find_cols <- function(dat, pattern){
  grep(pattern, names(dat))
}

#' Reduce data to only columns of interest
#'
#' @param dat a data frame
#' @param cols a numeric vector of column positions
#'
#' @return a data frame
#'
#' @examples
#' reduce_dat(fruit, 1:2)
reduce_dat <- function(dat, cols){
  dat[ , cols]
}

#' Message user about how many fruits are found (i.e, how many
#' columns are in the data).
#'
#' @param mini_dat a data frame
#'
#' @return a message in console
#'
#' @examples
#' message_fruit(fruit)
message_fruit <- function(mini_dat){
  message("Found ", ncol(mini_dat), " fruits!")
}

#' Compute average characteristics for identified fruit
#'
#' @param mini_dat
#'
#' @return a named numeric vector
#'
#' @examples
#' compute_avg(fruit)
compute_avg <- function(mini_dat){
  rowMeans(mini_dat)
}


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

