// Simple linear regression.
#include <TMB.hpp>
template<class Type>
Type objective_function<Type>::operator() ()
{
  DATA_VECTOR(Y);
  DATA_VECTOR(X);
  
  PARAMETER(logSigma);
  PARAMETER(a);
  PARAMETER(b);
  
  
  Type nll = -sum(dnorm(Y, a+b*X, exp(logSigma), true));
  return nll;
}

