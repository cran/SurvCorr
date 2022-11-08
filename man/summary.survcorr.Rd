\name{summary.survcorr}
\alias{summary.survcorr}
\alias{summary}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Summary Method for survcorr Objects
}
\description{
Summarizes results of a correlation analysis of bivariate survival times}
\usage{
\method{summary}{survcorr}(object, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
a survcorr object}
  \item{\dots}{
further arguments passed to summary
}
}
\details{
Summarizes the results of a correlation analysis of bivariate survival times. Beside of the calculated correlation coefficient
and its confidence interval, a contingency table of the bivariate event status, some of the most important input parameters, as well as posterior mean and variance of the transformed correlation coefficients are printed.
}
\value{
NULL
}
\references{
Schemper,M., Kaider,A., Wakounig,S. & Heinze,G. (2013): "Estimating the correlation of bivariate failure times under censoring", Statistics in Medicine, 32, 4781-4790 \doi{10.1002/sim.5874}.
}
\author{
Meinhard Ploner, Alexandra Kaider, Georg Heinze
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ survival }
\keyword{ correlation }
\keyword{ IMI }

