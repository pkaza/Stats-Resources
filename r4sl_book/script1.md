Modeling Basics in R
================
pkazamias
2021-05-31

``` r
# Libraries 
library(readr)
```

    ## Warning: package 'readr' was built under R version 4.0.5

``` r
library(here)
```

    ## here() starts at C:/pkaza/projects/personal/stats/r4stats

``` r
# Load data

Advertising<-read_csv(here("data","Advertising.csv"))
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
Advertising<-Advertising[,-1]
Advertising # Because the data was read using read_csv(), advertising is a tibble.
```

    ## # A tibble: 200 x 4
    ##       TV radio newspaper sales
    ##    <dbl> <dbl>     <dbl> <dbl>
    ##  1 230.   37.8      69.2  22.1
    ##  2  44.5  39.3      45.1  10.4
    ##  3  17.2  45.9      69.3   9.3
    ##  4 152.   41.3      58.5  18.5
    ##  5 181.   10.8      58.4  12.9
    ##  6   8.7  48.9      75     7.2
    ##  7  57.5  32.8      23.5  11.8
    ##  8 120.   19.6      11.6  13.2
    ##  9   8.6   2.1       1     4.8
    ## 10 200.    2.6      21.2  10.6
    ## # ... with 190 more rows

``` r
# Visualization for regression

plot(sales ~ TV, data = Advertising, col = "dodgerblue", pch = 20, cex = 1.5,main = "Sales vs Television Advertising")
```

![](script1_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->

``` r
pairs(Advertising)

library(caret)
```

    ## Warning: package 'caret' was built under R version 4.0.5

    ## Loading required package: lattice

    ## Loading required package: ggplot2

![](script1_files/figure-gfm/unnamed-chunk-1-2.png)<!-- -->

``` r
featurePlot(x = Advertising[ , c("TV", "radio", "newspaper")], y = Advertising$sales)
```

![](script1_files/figure-gfm/unnamed-chunk-1-3.png)<!-- -->

``` r
# The lm() function
```

The lm() function

``` r
mod_1 = lm(sales ~ ., data = Advertising)
```
