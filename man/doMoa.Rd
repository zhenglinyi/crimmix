% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doMoa.R
\name{doMoa}
\alias{doMoa}
\title{doMoa}
\usage{
doMoa(data, K, ncomp = 2, k = 0.05)
}
\arguments{
\item{data}{List of matrices.}

\item{K}{Number of clusters}

\item{ncomp}{An integer; the number of components to calculate.
To calculate more components requires longer computational time.}

\item{k}{The absolute number (if k >= 1) or the proportion (if 0<k<1) of non-zero coefficients
for the variable loading vectors. It could be a single value or
a vector has the same length as x so the sparsity of individual matrix could be different.}
}
\value{
a list of \code{clust} the clustering of samples and
\code{fit} the results of the method intNMF#' @export
}
\description{
doMoa
}
\examples{
set.seed(333)
c_1 <- simulateY(J=100, prop=0.1, noise=1)
c_2 <- simulateY(J=200, prop=0.1, noise=1)
c_3 <- simulateY(J=50, prop=0.1,  noise=0.5)
data <- list(c_1$data , c_2$data , c_3$data)
res <- doMoa(data,K=4)
}
