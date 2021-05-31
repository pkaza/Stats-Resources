Modeling Basics in R
================
pkazamias
2021-05-31

Modeling Basics in R

``` r
library(readr)
```

    ## Warning: package 'readr' was built under R version 4.0.5

``` r
library(here)
```

    ## here() starts at C:/pkaza/projects/personal/stats/r4stats

``` r
here()
```

    ## [1] "C:/pkaza/projects/personal/stats/r4stats"

``` r
#advertising = read_csv("data/Advertising.csv")
advertising<-read_csv(here("data","Advertising.csv"))
```

    ## Warning: Missing column names filled in: 'X1' [1]

    ## 
    ## -- Column specification --------------------------------------------------------
    ## cols(
    ##   X1 = col_double(),
    ##   TV = col_double(),
    ##   radio = col_double(),
    ##   newspaper = col_double(),
    ##   sales = col_double()
    ## )

``` r
advertising
```

    ## # A tibble: 200 x 5
    ##       X1    TV radio newspaper sales
    ##    <dbl> <dbl> <dbl>     <dbl> <dbl>
    ##  1     1 230.   37.8      69.2  22.1
    ##  2     2  44.5  39.3      45.1  10.4
    ##  3     3  17.2  45.9      69.3   9.3
    ##  4     4 152.   41.3      58.5  18.5
    ##  5     5 181.   10.8      58.4  12.9
    ##  6     6   8.7  48.9      75     7.2
    ##  7     7  57.5  32.8      23.5  11.8
    ##  8     8 120.   19.6      11.6  13.2
    ##  9     9   8.6   2.1       1     4.8
    ## 10    10 200.    2.6      21.2  10.6
    ## # ... with 190 more rows
