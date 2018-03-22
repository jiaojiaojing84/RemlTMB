## RemlTMB
### This is a R package for Reml calculation of linear models in Template Model Builder (TMB). 
### Before running this package, you should have "TMB" r package first installed.

Reml is the estimate variance components with restricked (residual) maximum likelihood function (details see Meza et al. 2008). Reml can produce unbiased estimate of variances that is required for other parameter estimate in many ecological systems (e.g., fisheries stock assessment). However, traditional "reml" function in "lme4" r package cannot be directly used by models in TMB. This package "RemlTMB" can directly produce Reml results in TMB.  
The current version of this package only includes linear model, other non-linear models will be included in future.

### Citation
C. Meza, F Jaffrezic, and J. Foulley.  2007.  REML estimation of variance parameters in nonlinear mixed effects models using the SAEM algorithm.  Biometrical Journal 49: (6) 876–888
