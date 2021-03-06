% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PerformanceMeasures.R
\name{PerformanceMeasures}
\alias{PerformanceMeasures}
\title{Output module: PerformanceMeasures}
\usage{
PerformanceMeasures(.model, .ras, threshold = 0.5)
}
\arguments{
\item{.model}{\strong{Internal parameter, do not use in the workflow function}. \code{.model} is list of a data frame (\code{data}) and a model object (\code{model}). \code{.model} is passed automatically in workflow, combining data from the model module(s) and process module(s), to the output module(s) and should not be passed by the user.}

\item{.ras}{\strong{Internal parameter, do not use in the workflow function}. \code{.ras} is a raster layer, brick or stack object. \code{.ras} is passed automatically in workflow from the covariate module(s) to the output module(s) and should not be passed by the user.}

\item{threshold}{A chosen threshold value for measures that need 0/1 predictions}
}
\description{
Calculate a suite of performance metrics on either crossvalidation, external validation data or (at your own risk) in-sample validation.
}
\details{
This model prints to console a number of metrics of the model fitted:
\itemize{
 \item \code{auc} - (see ?SDMTools::auc) The Area Under the Curve of the Receiver operating characteristic using a Mann-Whitney U statistic
 \item \code{\link{kappa}} - (see ?kappa) An estimate of the 2-norm condition number of a matrix or of the R matrix of a QR decomposition, perhaps of a linear fit. The 2-norm condition number can be shown to be the ratio of the largest to the smallest non-zero singular value of the matrix.
 \item \code{\link{omissions}} - (see ?SDMTools::omission) The ommission rate as a proportion of true occurrences misidentified given the defined threshold value.
 \item \code{sensitivity} - (see ?SDMTools::sensitivity) The proportion of actual presences predicted given the defined threshold value.
 \item \code{specificity} - (see ?SDMTools::specificity) The proportion of actual absences predicted given the defined threshold value.
 \item \code{proportionCorrect} - (see ?SDMTools::prop.correct) The proportion of the presence and absence records correctly identified given the defined threshold value.
}
}
\section{Version}{
 1.0
}

\section{Date submitted}{
 2015-11-13
}
\author{
ZOON Developers, \email{zoonproject@gmail.com}
}
\seealso{
Other output: \code{\link{Appify}}, \code{\link{Figshare}},
  \code{\link{InteractiveCovariateMap}},
  \code{\link{InteractiveMap}},
  \code{\link{PredictNewAreaMap}}, \code{\link{PrintMap}},
  \code{\link{ResponseCurve}},
  \code{\link{SameTimePlaceMap}}, \code{\link{SurfaceMap}}
}

