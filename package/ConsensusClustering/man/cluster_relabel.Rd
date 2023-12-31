% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/basic_functions.R
\name{cluster_relabel}
\alias{cluster_relabel}
\title{Relabeling clusters based on cluster similarities}
\usage{
cluster_relabel(x1, x2)
}
\arguments{
\item{x1}{clustering vector 1
Zero elements are are considered as unclustered samples}

\item{x2}{clustering vector 2
Zero elements are are considered as unclustered samples}
}
\value{
dataframe of relabeled clusters
}
\description{
Relabeling clusters based on cluster similarities
}
\details{
When performing performing several clustering, the cluster labels may no match with each other.
To perform maximum voting, the clustering need to be relabels based on label similarities.
}
\examples{
X = gaussian_clusters()$X
x1 = kmeans(X, 5)$cluster
x2 = kmeans(X, 5)$cluster
clusters = cluster_relabel(x1, x2)

}
