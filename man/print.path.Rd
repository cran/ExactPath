\name{print.path}
\alias{print.path}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Print a "\code{path}" Object
}
\description{
\code{print.path} prints out the content of a "\code{path}" object generated by \code{exact.path}.
}

\usage{
\method{print}{path}(x, \dots)
}

\arguments{
\item{x }{
an object of class \code{path}. See also \code{\link{exact.path}}.
}
\item{\dots }{
not used.
}
}

%\details{
%%  ~~ If necessary, more details than the description above ~~
%This function makes use of the function \code{xyplot} from package \code{lattice}. 
%}
%%\value{
%%}
%\references{
%}

\author{
Kai Wang \code{<kai-wang@uiowa.edu>}
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{exact.path}}.
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
