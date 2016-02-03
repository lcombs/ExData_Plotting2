source("load_data.R")

# 6. Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources 
# in Los Angeles County, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?

temp <- 
        NEI[fips %in% c("24510", "06037")][type == "ON-ROAD"][, sum(Emissions), 
                                                              by = c("year", "fips")]
temp[, fips := 
             factor(fips, 
                    labels = c("CA", "MD"))]

library(ggplot2)

ggplot(temp, aes(year  %>%  as.factor(), V1)) +
        geom_bar(stat = "identity") +
        facet_grid(. ~ fips) +
        ggtitle("Compare Total Emissions By Year in Baltimore City, MD and Los Angeles County, CA") +
        ylab("Emissions (tons)") +
        xlab("Year")

ggsave("plot6.png")
