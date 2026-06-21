
#install and load package
install.packages("secr")
library(secr)

#list all available datasets
data(package = "secr")

#load data
data(ovenbird)

#inspect and plot capthist locations
summary(ovenCH)

plot(ovenCH, tracks = TRUE)

#view detectors
traps(ovenCH)
plot(traps(ovenCH))

#mask & fit
ovenmask <- make.mask(traps(ovenCH)[["2005"]],type = "trapbuffer", buffer = 400, spacing = 15)

#fit model
model1 <- secr.fit(ovenCH, mask = ovenmask, trace = FALSE)
model2 <- secr.fit(ovenCH, mask = ovenmask, model = list(D ~ Session))

AIC(model1,model2)

#density results
summary(model1)
predict(model1)
