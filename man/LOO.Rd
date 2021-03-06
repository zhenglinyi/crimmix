% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LOO.R
\name{LOO}
\alias{LOO}
\title{LOO - Integration Multi-omics}
\usage{
LOO(data, method, it.max = NULL, mc.cores = 1, ...)
}
\arguments{
\item{data}{List of matrices.}

\item{method}{A character value specifying the method to run (See Details).}

\item{it.max}{An integer to define number of maximum iteration (smaller than the number of samples)}

\item{mc.cores}{An integer that define the number of cores to parallelize}

\item{...}{Additionnal parameters for each methods}
}
\value{
results of the method on each subset
}
\description{
LOO - Integration Multi-omics
}
\examples{
c_1 <- simulateY(J=1000, prop=0.1, noise=1)
c_2 <- simulateY(J=2000, prop=0.1, noise=1)
c_3 <- simulateY(J=500, prop=0.1,  noise=0.5)
data <- list(c_1$data , c_2$data , c_3$data)
res <- LOO(data,K=4,method="SGCCA")
}
