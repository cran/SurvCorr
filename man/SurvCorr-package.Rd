\name{SurvCorr-package}
\alias{SurvCorr-package}
\alias{SurvCorr}
\docType{package}
\title{
Correlation Analysis of Survival Times by Iterative Multiple Imputation
}
\description{
This R-package implements the iterative multiple imputation algorithm as proposed by Schemper, Kaider, Wakounig and Heinze (2013) for estimation of a correlation coefficient for bivariate possibly censored time-to-event data.
}
\details{
\tabular{ll}{
Package: \tab SurvCorr\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-02-25\cr
License: \tab GPL\cr
}

The analysis of correlations within pairs of survival times is of interest to many research topics in medicine, such as the correlation of survival-type endpoints of twins, the correlation of times till failure in paired organs, or the correlation of survival time with a surrogate endpoint. The dependence of such times is assumed monotonic and thus quantification by rank correlation coefficients appropriate. The typical censoring of such times requires more involved methods of estimation and inference as have been developed in recent years.   As an alternative to the maximum likelihood methodology for the normal copula approach (NCE) this package implements an iterative multiple imputation (IMI) method which requires only about 0.05\% of the computing time of NCE, without sacrificing statistical performance. For IMI, survival probabilities at death or censoring times are first transformed to normal deviates. Then, those deviates which relate to censored times are iteratively augmented, by conditional multiple imputation, until convergence is obtained for the normal scores rank correlation, which is similar to Spearman's rank correlation. Schemper, Kaider, Wakounig and Heinze (2013) compared statistical properties of NCE and IMI  by means of a Monte Carlo study and by means of three real data sets; two of them are available in this package.

The package's main function is \code{survcorr}, accompanied by appropriate \code{print} and \code{summary} methods. A \code{plot} method can be used to visualize the bivariate distribution either as a copula, or as distribution of survival times. In the former case, one can plot original (uncensored) values along with univariately or bivariately imputed values.

}
\author{
Meinhard Ploner, Alexandra Kaider and Georg Heinze (e-mail: georg.heinze@meduniwien.ac.at)

}
\references{
Schemper,M., Kaider,A., Wakounig,S. & Heinze,G. (2013): "Estimating the correlation of bivariate failure times under censoring", Statistics in Medicine, 32, 4781-4790 \url{http://dx.doi.org/10.1002/sim.5874}.
}
\keyword{ survival }
\keyword{ correlation }
\keyword{ IMI }

