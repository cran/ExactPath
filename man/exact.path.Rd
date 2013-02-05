\name{exact.path}
\alias{exact.path}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Generate Exact Solution Path 
}
\description{
\code{exact.path} generates the whole solution paths. 
}

\usage{
exact.path(X, y, max.var=20, verbose=FALSE)
}

\arguments{
\item{X }{
an \eqn{n\times p} design matrix for the predictors.
}
\item{y }{
a vector of the response values.
}

\item{max.var }{
a numerical value (default value: 20) that gives the maximum number of steps. Extra 4 steps are allowed in case the same set of predictors enter or exit the set of active predictors more than once. This value contributes to the determination of how many \eqn{\lambda_k}s are to be found.  
}

\item{verbose }{
If \code{TRUE}, the value of \eqn{\lambda_k} and the associated information will be printed at every step a new \eqn{\lambda_k} is found. The default is \code{FALSE}.
}
}


\details{
%%  ~~ If necessary, more details than the description above ~~
Starting with a large value, this function finds recursively \eqn{\lambda_1}, \eqn{\lambda_2}, \eqn{\ldots} until the desired number of steps is achieved. At each step, inactive predictors become active, active predictors become inactive, or both. The selection indicator is automatically determined. The backend engine is \code{LASSO.exact}.

It is not necessary to standardize the columns of \code{X} and the response vector \code{y}. Such standardization is conducted anyway in this function. 
}

\value{
A list object of class "\code{path}". This list contains the following components:
\item{breaks }{
a length \eqn{K} vector of \eqn{\lambda_k}s
}

\item{tau }{
a \eqn{p\times K} matrix of selection indicators.
}

\item{beta }{
a \eqn{p\times K} matrix of regression coefficients. See also \code{LASSO.exact}.
}

\item{score }{
a \eqn{p\times K} matrix of scores. See also \code{LASSO.exact}.
}

}

\references{
Wang K. (2013) Exact LASSO linear regression. Submitted.
}

\author{
Kai Wang \code{<kai-wang@uiowa.edu>}
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{LASSO.exact}} is the function for generating \eqn{\lambda_k} at each step.
}

\examples{
library(ncvreg)
data(prostate)
exact.path(as.matrix(prostate[,-9]), prostate$lpsa, verbose=TRUE)

library(ncvreg)
data(heart)
exact.path(as.matrix(heart[,-1]), heart$sbp)

library(lars)
data(diabetes)
exact.path(diabetes$x, diabetes$y, verbose=TRUE)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
