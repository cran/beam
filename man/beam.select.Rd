\name{beam.select}
\alias{beam.select}

\title{Edge selection with multiple testing and error control}

\usage{
beam.select(object, thres = 0.1, method = "BH", p0 = NULL,
return.only = c(object@return.only, "adj"))
}

\arguments{
  \item{object}{An object of class \code{\link{beam-class}}.}

  \item{thres}{numeric. Threshold to be applied on adjusted tail probabilities.}

  \item{method}{character. Method to use for multiple comparison adjustment of tail probabilities.}

  \item{p0}{numeric. Prior probability on the number of null hypotheses.}

  \item{return.only}{character. Quantities to be returned.}
}

\value{
An object of class \code{\link{beam.select-class}}
}

\description{
Bayesian inference of graphical structures in high-dimensional settings
}

\details{
The argument \code{method} allows to adjust the tail probabilities obtained from the null distributions of
the Bayes factors for multiple comparisons. Possible choices are: "holm", "bonferroni", "BH", "BY", "HC",
"blfdr" and "BFDR". Apart from "HC", "blfdr" and "BFDR", these are passed onto the R function \code{p.adjust}
from package \pkg{stats} and we refer the user to its documentation for details. The method "HC" provides an
optimal decision threshold based on the Higher Criticism score which is computed using the R function \code{hc.thresh}
from package \pkg{fdrtool}. Again, we refer to the associated documentation for details. Methods "blfdr" and "BFDR"
only work when a prior probability on the number of null hypotheses is specified via argument \code{p0}.

The argument \code{return.only} allows to decide which quantities have to be in the output: it could be any subvector of c('cor', 'BF', 'prob', 'adj') (provided that the requested quantities have been computed in the beam object, except for adjusted probabilities). It can also be set to NULL: in this case, only the selected edges will be returned without any additional information. The default value for this argument are the columns present in the beam object plus the adjusted probabilities.
}

\author{
Gwenael G.R. Leday and Ilaria Speranza
}

\references{
Leday, G.G.R. and Richardson, S. (2018). Fast Bayesian inference in large Gaussian graphical models. Submitted.
}

