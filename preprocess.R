df <- read.csv('C:\\Users\\admin\\Downloads\\_content_All_grams.csv')

df5 <- df[ , c("X", "y","freq")]
saveRDS(df5, file = "D:\\Coursera\\capstone\\shinydashboard\\capstoneFinal\\data\\FiveWords.rds")