#' ---
#' title: "Modeling Basics in R"
#' output: github_document
#' #html_document:
#' #keep_md: true
#' ---

# Libraries 
library(readr)
library(here)

# Load data

Advertising<-read_csv(here("data","Advertising.csv"))
Advertising<-Advertising[,-1]
Advertising # Because the data was read using read_csv(), advertising is a tibble.

# Visualization for regression

plot(sales ~ TV, data = Advertising, col = "dodgerblue", pch = 20, cex = 1.5,main = "Sales vs Television Advertising")
pairs(Advertising)

library(caret)
featurePlot(x = Advertising[ , c("TV", "radio", "newspaper")], y = Advertising$sales)

# The lm() function
#' The lm() function
mod_1 = lm(sales ~ ., data = Advertising)
