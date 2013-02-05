\name{ExactPath-package}
\alias{ExactPath-package}
\alias{ExactPath}
\docType{package}
\title{
Exact Solution Paths for Regularized \eqn{L_1} LASSO Regression
}
\description{
\code{ExactPath} implements an algorithm for exact LASSO solution. Two methods are provided to print and visualize the whole solution paths. Use \code{?ExactPath} to see an introduction. Packages \code{\link{ncvreg}} and \code{\link{lars}} are required so that their data sets can be used in examples.
}
\details{
\tabular{ll}{
Package: \tab ExactPath\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-02-05\cr
License: \tab GPL (>=2)\cr
LazyLoad: \tab yes\cr
}
}
\author{
Kai Wang \code{<kai-wang@uiowa.edu>}
}
\references{
Wang K. (2013) Exact LASSO linear regression. Submitted.
}

%%~~ Optionally other standard keywords, one per line, from file KEYWORDS in the R documentation directory ~~
%%\keyword{ package }
%\seealso{
%%~~ Optional links to other man pages, e.g. ~~
%%~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
%}
\examples{
library(ncvreg)
data(prostate)
myfit = exact.path(as.matrix(prostate[,-9]), prostate$lpsa, verbose=TRUE)
myfit
plot(myfit)

library(ncvreg)
data(heart)
myfit = exact.path(as.matrix(heart[,-1]), heart$sbp)
myfit
plot(myfit)

library(lars)
data(diabetes)
myfit = exact.path(diabetes$x, diabetes$y, verbose=TRUE)
myfit
plot(myfit)
}
