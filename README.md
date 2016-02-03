# ExData_Plotting2

Course Project 2

The overall goal of this assignment is to explore the National Emissions Inventory database and see what it say about fine particulate matter pollution in the United states over the 10-year period 1999–2008. You may use any R package you want to support your analysis.

Questions

You must address the following questions and tasks in your exploratory analysis. For each question/task you will need to make a single plot. Unless specified, you can use any plotting system in R to make your plot.

# 1. Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

## Please see plot1.R and plot1.png. It appears that overall emissions have steadily decreased over the years.

# 2. Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (𝚏𝚒𝚙𝚜 == "𝟸𝟺𝟻𝟷𝟶") from 1999 to 2008? Use the base plotting system to make a plot answering this question.

## Please see plot2.R and plot2.png. It appears that overall emissions have decreased over the years, but it has not been steady.

# 3. Of the four types of sources indicated by the 𝚝𝚢𝚙𝚎 (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.

## Please see plot3.R and plot3.png. Besides point, the emissions have seen decreases overall. Point has increased and, in 2005, saw its largest increase. In 2008, it dropped back to a similar level to 1999.

# 4. Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

## Please see plot4.R and plot4.png. The emissions from coal have decreased with the most significant decrease coming in 2008.

# 5. How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

## Please see plot5.R and plot5.png. The emissions from motor vehicles have decreased with the most significant decrease coming in 2008.

# 6. Cthe early yearsre emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (𝚏𝚒𝚙𝚜 == "𝟶𝟼𝟶𝟹𝟽"). Which city has seen greater changes over time in motor vehicle emissions?

## Please see plot6.R and plot6.png.

Each plot answers th LA has a very large amount of emissions compared to Baltimore. LA's emissions have actually increased overall, while Baltimore's decreased. e questions above and is saved to a PNG file. The code used to create the files are saved with corresponding names. 