df <- read.csv('C:\\Users\\admin\\Downloads\\_content_All_grams.csv')
df5 <- df[ , c("X", "y","freq")]
rm(df)

# Keep only 3 duplicates of an instance of X
df_1dup <- df5[!duplicated(df5$X), ]
df5 <- df5[duplicated(df5$X), ]

df_2dup <-  df5[!duplicated(df5$X), ]
df5 <- df5[duplicated(df5$X), ]

df_3dup <-  df5[!duplicated(df5$X), ]
df5 <- df5[duplicated(df5$X), ]

rm(df5)
df5 <- rbind(df_1dup, df_2dup, df_3dup)
rm(df_1dup, df_2dup, df_3dup)

#save it finally
saveRDS(df5, file = "D:\\Coursera\\capstone\\shinydashboard\\capstoneFinal\\data\\FiveWords.rds")