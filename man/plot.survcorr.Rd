\name{plot.survcorr}
\alias{plot.survcorr}
\alias{plot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot Correlated Bivariate Survival Times
}
\description{
Produces a scatterplot of bivariate survival times, either on the original times scale or as copula (uniform marginal distributions). Censored observations are inserted either by their imputed values (copula plot) or marked by arrows (survival times plot). The first time variable will be plotted on the y-axis, the second on the x-axis.
}
\usage{
\method{plot}{survcorr}(x, what = "uniform", imputation = 1, 
  xlab = switch(what, copula= expression(hat(F)(t[2])),
    uniform = expression(hat(F)(t[2])), 
  times = expression(t[2])), 
  ylab = switch(what, copula = expression(hat(F)(t[1])), 
    uniform = expression(hat(F)(t[1])), 
  times = expression(t[1])), xlim, ylim, 
  main = switch(what, copula = "Bivariate Copula",uniform = "Bivariate Copula", 
    times = "Bivariate Survival Times"), 
  legend = TRUE, cex.legend = switch(what, copula = 0.8, uniform = 0.8, times = 0.7), 
  pch = "*", colEvent = "black", colImput = "gray", ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
an object of class \code{survcorr}
}
  \item{what}{
what should be plotted: \code{"uniform"} or \code{"copula"} to plot the bivariate copula, \code{"times"} to plot the survival times. The default is to plot the copula.
}
  \item{imputation}{
If the copula is plotted, then the index of the imputated data set to be used to replace censored observation can be given (e.g., \code{imputation=1:5}. Default: \code{imputation=1})
}
  \item{xlab}{
An optional x-axis label.
}
  \item{ylab}{
An optional y-axis label.
}
  \item{xlim}{
Optional limits for x-axis.
}
  \item{ylim}{
Optional limits for y-axis.
}
  \item{main}{
Optional title.
}
  \item{legend}{
Optional legend.
}
  \item{cex.legend}{
Optional font size of legend.
}
  \item{pch}{
Optional plot character.
}
  \item{colEvent}{
Color of symbols representing uncensored times (default=\code{"black"}).
}
  \item{colImput}{
Color of symbols representing imputations for censored times (default=\code{"gray"}).
}
  \item{\dots}{
Further options to be passed to the \code{plot} function.}
}
\value{
no return value; function is called for its side effects
}
\references{
Schemper,M., Kaider,A., Wakounig,S. & Heinze,G. (2013): "Estimating the correlation of bivariate failure times under censoring", Statistics in Medicine, 32, 4781-4790 \doi{10.1002/sim.5874}.}
\author{
Meinhard Ploner, Alexandra Kaider, Georg Heinze
}
\examples{
## Example 2
data(diabetes)
obj <- survcorr(formula1=Surv(TIME1, STATUS1) ~ 1, formula2=Surv(TIME2, STATUS2) ~ 1, 
  data=diabetes, M=100, MCMCSteps=10, alpha=0.05, epsilon=0.001)
plot(obj, "times")
plot(obj, "copula", imputation=1)
plot(obj, "copula", imputation=7)

}


% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ survival }
\keyword{ correlation }
\keyword{ IMI }