library(tidyverse)

fpi <- read_csv("DataSets/Food_Price_Index_Selected_Monthly_Weighted_Average_Prices_for_New_Zealand_Monthly_June_2019.csv")
fpi  %>%
  head()
fpi %>%
  typeof()

# https://stackoverflow.com/a/12328064

fpi[-c(1, 3, 4), ] %>%
  head()
