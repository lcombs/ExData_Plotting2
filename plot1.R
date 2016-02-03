source("load_data.R")

# 1. Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
# Using the base plotting system, make a plot showing the total PM2.5 emission from all 
# sources for each of the years 1999, 2002, 2005, and 2008.

temp <- 
        NEI[, sum(Emissions), 
            by = year] 

png("plot1.png")

barplot(height = temp$V1, 
        names.arg = temp$year,
        ylab = "Emissions (tons)", 
        xlab = "Year", 
        main = "Total Emissions by Year")

dev.off()
