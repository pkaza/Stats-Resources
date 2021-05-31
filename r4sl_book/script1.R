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
mod_1 = lm(sales ~ ., data = Advertising)
mod_0 = lm(sales ~ TV+radio, data = Advertising)

# Hypothesis testing

summary(mod_1)
summary(mod_0)

anova(mod_0,mod_1) #compare the two models

#' The anova() function performs a hypothesis test comparing the two models. Essentially we are testing for the significance of the Newspaper variable in the additive model.
#' The null hypothesis is that the two models fit the data equally well, and the alternative hypothesis is that mod1 (full additive model) is superior. Low F-statistic and not 
#' significant p-value means that we cannot reject the null hypothesis.

# Prediction

head(predict(mod_1), n = 10) #Predicted values for the first 10 observations based on mod_1


#' We could also specify new data, which should be a data frame or tibble with the same column names as the predictors.

new_obs = data.frame(TV = 150, radio = 40, newspaper = 1)
predict(mod_1, newdata = new_obs,interval="confidence")
predict(mod_1, newdata = new_obs, interval = "prediction", level = 0.99)
