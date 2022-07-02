#' Message user about how many fruits are found (i.e, how many
#' columns are in the data).
#'
#' @param mini_dat a data frame
#'
#' @return a message in console
#' @export
#'
#' @examples
#' message_fruit(fruit)
message_fruit <- function(mini_dat){
  message("Found ", ncol(mini_dat), " fruits!")
}
