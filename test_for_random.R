 # df23 <- readRDS('data/FiveWords.rds')
inputr <- "one of"

outputs <- arrange( df23 [df23$X == inputr,  ] , desc(csum ) ) 
outputs['csumLag']<- lead(outputs['csum'], n=1 )
outputs[ dim(outputs)[1] , 'csumLag'] <- 0

# predict based on randNum
# set.seed(15)
randNum <- runif(1) 
print(randNum)
prediction <- outputs[ outputs$csum  > randNum & outputs$csumLag <= randNum
                       , c("X", "y") ]
for (x in 1:2) {
  randNum <- runif(1) 
  print(randNum)
  pred <- outputs[ outputs$csum  > randNum & outputs$csumLag <= randNum
                         , c("X", "y") ]
  prediction <- rbind(prediction, pred)

}
prediction
                      

