source("load_data.R")

# 2. Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") 
# from 1999 to 2008? Use the base plotting system to make a plot answering this question.

temp <- 
        NEI[fips == "24510"][, sum(Emissions), by = year] 

png("plot2.png")

barplot(height = temp$V1, 
        names.arg = temp$year,
        ylab = "Emissions (tons)", 
        xlab = "Year", 
        main = "Total Emissions by Year in Baltimore City, MD")

dev.off()