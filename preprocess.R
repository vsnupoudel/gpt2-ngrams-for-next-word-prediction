df <- read.csv('C:\\Users\\admin\\Downloads\\_content_All_grams.csv')
df5 <- df[ , c("X", "y","freq")]
rm(df)
library(dplyr)
# group by X, and find sum of frequencies
df5_sums <- df5 %>%
  group_by(X) %>% summarize( sumf= sum(freq) )
# merge so that all the rows get the sum
df5 <- merge(df5, df5_sums, by = "X", all.x = TRUE)
rm(df5_sums)
# calculate probabilities to implement the probabilistic model
df5['probability'] = df5['freq'] / df5['sumf']

# cumulative probability
# using mutate function here
df5<- df5 %>% group_by(X) %>% mutate(csum = cumsum(probability))
df5 <- df5[ , c("X", "y","probability","csum")]

#save it finally
saveRDS(df5
,file="D:\\Coursera\\capstone\\shinydashboard\\capstoneFinal\\data\\FiveWords.rds")