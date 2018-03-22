RemlTMB <- function(data,a=0,b=0, ...)
{
  library(TMB)
  parameters <- list(a=0, b=0, logSigma=0)

  obj2 <-TMB::MakeADFun(data, parameters, random=c("a", "b"),DLL="linreg", silent = TRUE)
  opt1<-nlminb(obj2$par, obj2$fn, obj2$gr)
  rep2<-TMB::sdreport(obj2)

  ## set "initial" value of logSigma to REML estimate
  parameters <- list(a=0,b=0,logSigma=summary(rep2)[[1]])

  ## refit with logSigma fixed at REML
  obj3<-TMB::MakeADFun(data,parameters,map=list(logSigma=factor(NA)),DLL="linreg", silent = TRUE)
  opt1<-nlminb(obj3$par, obj3$fn, obj3$gr)
  rep3<-TMB::sdreport(obj3)
  return(rep3)
}
