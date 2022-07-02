#' Find columns matching a pattern
#'
#' @param dat a data frame
#' @param pattern character string of pattern to identify
#'
#' @return a numeric vector of column positions
#' @export
#'
#' @examples
#' find_cols(fruit, "berry")
find_cols <- function(dat, pattern){
  grep(pattern, names(dat))
}
