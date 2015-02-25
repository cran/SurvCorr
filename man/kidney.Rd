\name{kidney}
\docType{data}
\alias{kidney}
\title{Kidney Data}
\description{
Infections under dialysis: does time until infection of the first application of a portable dialysis machine correlate with the time until recurrence of infection during the second application? The infection occurs at the point of insertion of the catheter, and, when it occurs, the catheter is removed. After successful treatment of the infection, the catheter is reinserted again. In the data set of 38 patients, the times until infection in both periods are reported as well as corresponding censoring indicators. Censoring of the times till infection occurs if the catheter is removed because of other reasons than infection. 
}
\usage{kidney}
\format{A data.frame containing 38 rows and 5 variables (ID, time1, status1, time2, status2).}
\source{McGilchrist and Aisbett (1991)}
\references{
McGilchrist CA, Aisbett CW.Regression with frailty in survival analysis. Biometrics 1991; 47:461-466.
}
\keyword{datasets}