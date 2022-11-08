\name{print.survcorr}
\alias{print}
\alias{print.survcorr}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Print Method for survcorr Objects
}
\description{
Print method for \code{survcorr} objects (correlation of bivariate survival times). Summarizes most important results: estimated correlation coefficient and confidence interval.
}
\usage{
\method{print}{survcorr}(x, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
a survcorr object
}
  \item{\dots}{
additional options passed to \code{print}}
}
\details{
print method for objects of class \code{survcorr}
}
\value{
the estimated correlation coefficient and lower and upper (1-alpha) confidence limits
}
\references{
Schemper,M., Kaider,A., Wakounig,S. & Heinze,G. (2013): "Estimating the correlation of bivariate failure times under censoring", Statistics in Medicine, 32, 4781-4790 \doi{10.1002/sim.5874}.
}
\author{
Meinhard Ploner, Alexandra Kaider, Georg Heinze
}


\keyword{ survival }
\keyword{ correlation }
\keyword{ IMI }
