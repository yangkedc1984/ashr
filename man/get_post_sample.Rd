% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ashutility.R
\name{get_post_sample}
\alias{get_post_sample}
\title{Sample from posterior}
\usage{
get_post_sample(a, nsamp)
}
\arguments{
\item{a}{the fitted ash object}

\item{nsamp}{number of samples to return (for each observation)}
}
\description{
Returns random samples from the posterior distribution for each
    observation in an ash object. A matrix is returned, with columns corresponding
    to observations and rows corresponding to samples.
}
\examples{
beta = rnorm(100,0,1)
betahat= beta+rnorm(100,0,1)
ash.beta = ash(betahat,1,mixcompdist="normal")
post.beta = get_post_sample(ash.beta,1000)
}
