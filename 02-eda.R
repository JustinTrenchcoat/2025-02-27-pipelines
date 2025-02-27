# we don't need all packages in tidyverse
library(readr)
library(ggplot2)

# don't do this:
# source("01-load_clean.R")

# we saved the cleaned data into data/titanic_clean.csv
data <- readr::read_csv("data/titanic_clean.csv")


# eda 
ggplot(data = data, aes(x = pclass, fill = as.factor(survived)))+
  geom_bar()+ 
  labs(x = "Class", 
       y = "count",
       fill = "Survival")+
  ggtitle("Titanic Class vs. survival count (colored with survival result)")

# save the plot
ggsave("output/titanic1.png")

# this plot will prob not be in the report so don't save it
ggplot(data, aes(x = survived)) +
  geom_bar()
