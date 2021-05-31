#' ---
#' title: "Modeling Basics in R"
#' output:
#' html_document:
#' keep_md: true
#' ---

#' Modeling Basics in R

library(readr)
library(here)

here()
#advertising = read_csv("data/Advertising.csv")
advertising<-read_csv(here("data","Advertising.csv"))
advertising

