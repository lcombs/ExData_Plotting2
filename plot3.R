source("load_data.R")

# 3. Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, 
# which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? 
# Which have seen increases in emissions from 1999–2008? 
# Use the ggplot2 plotting system to make a plot answer this question.

library(ggplot2)

temp <- 
        NEI[fips == "24510"][, sum(Emissions), 
                             by = c("year", "type")]



ggplot(temp, aes(year, V1, color = type)) +
        geom_line() +
        ylab("Emissions (tons)") +
        ggtitle("Total Emissions by Year in Baltimore City, MD")

ggsave("plot3.png")
