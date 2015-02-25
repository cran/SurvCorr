\name{survcorr}
\alias{survcorr}
\alias{Surv}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Correlation Analysis of Survival Times by Iterative Multiple Imputation
}
\description{
This R-package implements the iterative multiple imputation algorithm as proposed by Schemper, Kaider, Wakounig and Heinze (2013) for estimation of a correlation coefficient for bivariate possibly censored time-to-event data.
}
\usage{
survcorr(formula1, formula2, 
    data, methods = "imi", alpha = 0.05, intra = FALSE, 
    M = 10, MCMCSteps = 10, epsilon = 0.001, maxiter = 100)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{formula1}{
Survival object for first time-to-event variable, e.g. \code{Surv(time1, status1)~1}
}
  \item{formula2}{
Survival object for second time-to-event variable, e.g. \code{Surv(time2, status2)~1}
}
  \item{data}{
Data set to look up variables
}
  \item{methods}{
Correlation method(s). Currently, only \code{"imi"} (iterative multiple imputation) is implemented.
}
  \item{alpha}{
One minus confidence level (for confidence interval computation)
}
  \item{intra}{
If TRUE, an intraclass correlation coefficient will be computed, assuming that the two time-to-event variables are interchangeable in each observation.
}
  \item{M}{
Number of imputations (for IMI)
}
  \item{MCMCSteps}{
Number of MCMCSteps (for IMI)
}
  \item{epsilon}{
Accuracy of numerical estimation of correlation coefficients
}
  \item{maxiter}{
Maximum number of iterations in IMI
}
}
\details{
The analysis of correlations within pairs of survival times is of interest to many research topics in medicine, such as the correlation of survival-type endpoints of twins, the correlation of times till failure in paired organs, or the correlation of survival time with a surrogate endpoint. The dependence of such times is assumed monotonic and thus quantification by rank correlation coefficients appropriate. The typical censoring of such times requires more involved methods of estimation and inference as have been developed in recent years.   As an alternative to the maximum likelihood methodology for the normal copula approach (NCE) this package implements an iterative multiple imputation (IMI) method which requires only about 0.05\% of the computing time of NCE, without sacrificing statistical performance. For IMI, survival probabilities at death or censoring times are first transformed to normal deviates. Then, those deviates which relate to censored times are iteratively augmented, by conditional multiple imputation, until convergence is obtained for the normal scores rank correlation, which is similar to Spearman's rank correlation. Schemper, Kaider, Wakounig and Heinze (2013) compared statistical properties of NCE and IMI  by means of a Monte Carlo study and by means of three real data sets; two of them are available in this package.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
%%rho=r.W.hat, ci.lower=limits[1], ci.upper=limits[2], simData=simData, M=M, MCMCSteps=MCMCSteps, rj.trans=rj.trans, rj.t.mean=rj.t.mean, 
%%             var=c(within=rj.t.var, between=BetwVar, total=TotalVar), df=df, intra=intra, alpha=alpha, call=match.call())
\item{rho }{estimated correlation coefficient}
\item{ci.lower }{lower limit of confidence interval for rho}
\item{ci.upper }{upper limit of confidence interval for rho}
\item{simData }{imputed data sets for each iteration, with components M (number of imputations), z1M, z2M (imputed normal deviates), delta1, delta2 (censoring indicators), t1, t2 (imputed non-censored survival times)}
\item{M }{number of imputations}
\item{MCMCSteps }{number of MCMC steps in iterative imputation}
\item{rj.trans }{the M atanh-transformed correlation coefficients from M imputed data sets}
\item{rj.t.mean }{the posterior mean of the atanh-transofmred correlation coefficients over the M imputations}
\item{var }{the variance of atanh(rho), with components within, between and total}
\item{df }{the number of degrees of freedom (important for confidence interval computation)}
\item{alpha }{1-confidence level}
\item{call }{the function call (useful for making use of update(obj))}
}
\references{
Schemper,M., Kaider,A., Wakounig,S. & Heinze,G. (2013): "Estimating the correlation of bivariate failure times under censoring", Statistics in Medicine, 32, 4781-4790 \url{http://dx.doi.org/10.1002/sim.5874}.}
\author{
Meinhard Ploner, Alexandra Kaider, Georg Heinze
}

\examples{
## Example 1
data(kidney)
obj = survcorr(formula1=Surv(TIME1, STATUS1) ~ 1, formula2=Surv(TIME2, STATUS2) ~ 1, 
  data=kidney, M=1000, MCMCSteps=10, alpha=0.05, epsilon=0.001)

## Example 2
data(diabetes)
obj = survcorr(formula1=Surv(TIME1, STATUS1) ~ 1, formula2=Surv(TIME2, STATUS2) ~ 1, 
  data=diabetes, M=100, MCMCSteps=10, alpha=0.05, epsilon=0.001)
plot(obj, "times")


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ survival }
\keyword{ correlation }
\keyword{ IMI }
