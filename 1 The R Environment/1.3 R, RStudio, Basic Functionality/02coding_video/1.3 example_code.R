#' ----------------------------------------
# Introduction to R
# 1.3 R, RStudio and Basic Functionality 
# University of Mannheim 
#' ----------------------------------------

print("Hello World")

#' ---------------------------
# 1. simple calculations -----
#' ---------------------------
5*5
24/7
22%%5

#' ----------------------------
# 2. arithmetic functions -----
#' ----------------------------
log(1)
exp(3)
sqrt(16)

#' --------------------------------------
# 3. storing information in objects -----
#' --------------------------------------
# define
x <- log(1)
string <- "Hello World"
# inspect
class(x)
class(string)
# print
print(x)
x

#' ---------------------------------------------
# 4. removing objects from the environment -----
#' ---------------------------------------------
x2 <- 5
rm(x)
rm(list = ls())

#' -----------------------------
# 5. installing packages -------
#' -----------------------------
install.packages("dplyr")
library(dplyr)
help(dplyr)
