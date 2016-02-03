source("load_data.R")

# 5. How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

temp <- 
        NEI[fips == "24510"][type == "ON-ROAD"][, sum(Emissions), by = year]

library(ggplot2)


ggplot(temp, aes(year  %>%  as.factor(), V1)) +
        geom_bar(stat = "identity") +
        ylab("Emissions (tons)") +
        ggtitle("Total Emissions By Year From Motor Vehicles in Baltimore City, MD") +
        xlab("Year")

ggsave("plot5.png")
