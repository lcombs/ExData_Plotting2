source("load_data.R")

# 4. Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

all_data <- 
        merge(NEI, SCC, by = "SCC")

all_data <- 
        all_data[grep("coal", all_data$Short.Name, ignore.case = TRUE), ]

temp <- 
        all_data[, sum(Emissions), by = year]

library(ggplot2)

ggplot(temp, aes(year  %>%  as.factor(), V1)) +
        geom_bar(stat = "identity") +
        ggtitle("Total Coal Emissions By Year") +
        ylab("Emissions (tons)") +
        xlab("Year")

ggsave("plot4.png")