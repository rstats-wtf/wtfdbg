
<!-- README.md is generated from README.Rmd. Please edit that file -->

# wtfdbg

<!-- badges: start -->
<!-- badges: end -->

This package is to facilitate debugging practice for the RStudio
Conference Workshop *What They Forgot To Teach You About R*.

The `fruit_avg()` function is from Jenny Bryan’s rstudio::conf(2020)
keynote *Object of type ‘closure’ is not subsettable*
<https://github.com/jennybc/debugging>.

Workshop exercises are at <https://github.com/rstats-wtf/wtf-debugging>.
Use of the `wtfdb` package corresponds to `03_exercise`: debugging
others’ code.

## Installation

You can install the development version of `wtfdbg` from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("rstats-wtf/wtfdbg")
```

## This works

``` r
library(wtfdbg)
fruit_avg(fruit, "berry")
#> Found 2 fruits!
#>  calories    weight yumminess 
#>       2.5       5.5       7.0
```

## This does not

``` r
fruit_avg(fruit, "peach")
#> Found  fruits!
#> Error in rowMeans(mini_dat): 'x' must be an array of at least two dimensions
```

Can you use debugging tools to figure out why?
