% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/basic_functions.R
\name{majority_voting}
\alias{majority_voting}
\title{Consensus mechanism based on majority voting}
\usage{
majority_voting(X)
}
\arguments{
\item{X}{clustering matrix of Nsamples x Nclusterings.
Zero elements are are considered as unclustered samples}
}
\value{
the vector of consensus clustering result
}
\description{
Consensus mechanism based on majority voting
}
\details{
Perform majority voting as a consensus mechanism.
}
\examples{
X = gaussian_clusters()$X
x1 = kmeans(X, 5)$cluster
x2 = kmeans(X, 5)$cluster
x3 = kmeans(X, 5)$cluster
clusters = majority_voting(cbind(x1,x2,x3))

}
