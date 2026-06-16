library(secr)
library(ggplot2)
library(dplyr)

#COME BACK TO LATER CODE NOT WORKING

#load all datasets
data(package = "secr")

#data(secrdemo)

#load data
data(ovenbird)

#inspect and plot capthist locations
summary(ovenCH)

#NOT WORKING
capdf3 <- ovenCH$capt
capdf3 <- as.data.frame(capdf)
class(capdf2)
summary(capdf)

capdf %>% 
  count(occasion) %>% 
  ggplot(aes(x = occasion, y = n)) +
  geom_line() +
  geom_point() +
  theme_minimal()
#DPLYR AND GGPLOT NOT WORKING WITH SECR

#plot(ovenCH, tracks = TRUE)



#view detectors
traps(ovenCH)
plot(traps(ovenCH))
ggplot()

data(ovenbird)
ovenmask

#fit model
fit <- secr.fit(ovenCH, mask = ovenmask, trace = FALSE)

#FIT MULTIPLE MODELS AND DO AIC ASSESMENT
#THEN VISUALISE

#density results
summary(fit)
predict(fit)
