## code to prepare `DATASET` dataset goes here
fruit <- data.frame(
  row.names = c("calories", "weight", "yumminess"),
  blackberry = c(4L, 9L, 6L),
  blueberry = c(1L, 2L, 8L),
  peach = c(59L, 150L, 10L),
  plum = c(30L, 78L, 5L)
)

usethis::use_data(fruit, overwrite = TRUE)
