library(tidyverse)

fpi <- read_csv("DataSets/Food_Price_Index_Selected_Monthly_Weighted_Average_Prices_for_New_Zealand_Monthly_June_2019.csv")
fpi  %>%
  head()
fpi %>%
  typeof()

# https://stackoverflow.com/a/12328064

fpi <- fpi[-c(1, 3, 4), ]
fpi %>% 
  head()


colnames(fpi) <- fpi[c(1),]
fpi <- fpi[-c(1), ]

# https://stackoverflow.com/a/22249839
fpi <- fpi[grepl("^[20]", fpi$Item),]

fpi$year <- (strsplit(fpi$Item, split = "M")[1])
fpi$month <- unlist(strsplit(fpi$Item, split = "M"))[2]


fpi[c(167,168)] %>%
  tail()
head(fpi$year)

fpi %>%setNames(make.names(names(.), unique = TRUE))%>%
  mutate(year = (strsplit(Item, split = "M"))[1]) %>%
  mutate(month = (strsplit(Item, split = "M"))[2]) %>%
  head()

fpi["year"] %>%
  head()


a = unlist(strsplit("2006M06", split = "M"))
a[1]
a[2]
unlist(strsplit("2006M06", split = "M"))[1]

write.csv(fpi,"wrangled_fpi.csv")
