\name{LASSO.exact}
\alias{LASSO.exact}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Generate Information on the Next Interval for \eqn{\lambda} 
}

\description{
\code{LASSO.exact()} generates the next value of \eqn{\lambda_k} and the associated selection indicator vector.
}

\usage{
LASSO.exact(lambda, tau, X, y)
}

\arguments{
\item{lambda }{
a numerical value for \code{lambda}. It does not need to be one of the \eqn{\lambda_k}s.
}

\item{tau }{
a vector of length \eqn{p}. Its elements are equal to 1, \eqn{-1}, or 0. This is the selection indicator vector.
}

\item{X }{
an \eqn{n\times p} design matrix for the predictors.
}
\item{y }{
a vector of the response values.
}
}

\details{
%%  ~~ If necessary, more details than the description above ~~
This function computes the next \eqn{\lambda_k} that \eqn{\lambda_k<\lambda}. Although it is a stand-alone function, it is meant to be called by \code{exact.path()}. \code{exact.path()} automatically finds recursively the \eqn{\lambda_k}s and sets up the correct values for \code{tau} for each \eqn{\lambda_k}.

It is not necessary to standardize the columns of \code{X} and the response vector \code{y}. Such standardization is conducted anyway in this function. 
}


\value{
Given the value \eqn{\lambda \in [\lambda_k, \lambda_{k-1})} and \eqn{\tau(\lambda)}, this function returns a data frame with the following variables:

\item{beta }{
a vector of length \eqn{p}. This is the vector of regression coefficients of the predictors evaluated at \eqn{\lambda_k}. Note that for active predictors, their coefficients are non-zero; for inactive predictors their coefficients are equal to 0.
}

\item{S }{
a vector of length \eqn{p}. This is the vector of scores of the predictors evaluated at \eqn{\lambda_k}. Note that for active predictors, the absolute values of their scores should be equal to \eqn{\lambda}; for inactive predictors the absolute value of their scores are \eqn{\leq \lambda}.
}

\item{breaks }{
a vector of length \eqn{p}. This is the vector of candidate \eqn{\lambda_k}s provided by each predictor. For active predictors, this is the value at which its regression coefficient is equal to 0. For inactive predictors, this is the value at which the absolute value of its score is equal to \eqn{\lambda}. The largest value of this vector that is less than \eqn{\lambda} is chosen to be \eqn{\lambda_k}.
}


\item{tau }{
a vector of length \eqn{p}. This is the vector of selection indicators predicted for \eqn{\lambda_k^-}. 
}

\item{change }{
a vector of length \eqn{p}. This is the vector of predicted status changes at \eqn{\lambda_k^-}: a predictor becomes active (\code{"+"}), inactive (\code{"-"}), or remains unchanged (\code{"|"}).
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
\code{\link{exact.path}} automatically generates the whole solution paths.
}

\examples{
library(lars)
data(diabetes)
LASSO.exact(0.05, c(0,-1,1,1,0,0,-1,0,1,1), diabetes$x, diabetes$y)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
