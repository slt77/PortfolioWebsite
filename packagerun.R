library(secr)

library(acre)

#load all datasets
data(package = "secr")

#data(secrdemo)

#load data
data(ovenbird)

#inspect and plot capthist locations
summary(ovenCH)

plot(ovenCH, tracks = TRUE)

#view detectors
traps(ovenCH)
plot(traps(ovenCH))

#fit model
fit <- secr.fit(ovenCH, mask = ovenmask, trace = FALSE)

#density results
summary(fit)
predict(fit)
