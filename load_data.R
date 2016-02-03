# load data

library(magrittr)
library(data.table)

NEI <- 
        readRDS("summarySCC_PM25.rds") %>%
        as.data.table()

SCC <- 
        readRDS("Source_Classification_Code.rds") %>%
        as.data.table()

# The overall goal of this assignment is to explore the National Emissions Inventory database 
# and see what it says about fine particulate matter pollution in the United states over the 
# 10-year period 1999–2008. You may use any R package you want to support your analysis.

# Questions
# You must address the following questions and tasks in your exploratory analysis. 
# For each question/task you will need to make a single plot. Unless specified, 
# you can use any plotting system in R to make your plot.