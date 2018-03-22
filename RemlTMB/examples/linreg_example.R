###install and call package TMB
library(TMB)
###compile cpp file
compile("linreg.cpp")
dyn.load(dynlib("linreg"))
###generate data for RemlTMB
set.seed(123)
data <- list(Y = rnorm(10,0,1) + 1:10, X=1:10)
###call package RemlTMB
library(RemlTMB)
###output of RemlTMB
RemlTMB(data,a=0, b=0)


