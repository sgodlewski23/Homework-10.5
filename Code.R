data <- read.csv("Game_of_Thrones.csv")
install.packages("knitr")
#This is Game of Thrones, a tv about fantasy and drama with many families fighting eachother for power.
names(data)
#Image
knitr::include_graphics('images.webp')
#Summary
summary(data$U.S..Viewers..Millions.)
#Viewership
plot(data$No..of.Episode..Overall.,data$U.S..Viewers..Millions., col= 'blue' , xlab ='Episodes', ylab ='Viewership in millions')

#Episodes Change
Episode_change <- diff(data$U.S..Viewers..Millions.)

plot(Episode_change , xlab= 'Episodes', ylab= 'Difference change in viewership per episode', col = 'blue')

#As more epsiodes came out, the amount of viewership grew. In addition, the differnce between the amount of viewers 
#per episode grew as well as more episdoes came out. This is because as the amount of vierwers increases,
#the flucuation of viewers also increases. In earlier epsidoes, the differnce was about half a million. In later  seasons, the differnce between epsidoes was about 1.5 million