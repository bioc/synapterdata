\name{ups25a}
\alias{ups25a}
\alias{ups25b}
\alias{ups25c}
\alias{ups50a}
\alias{ups50b}
\alias{ups50c}

\docType{data}

\title{
  \code{Synapter} spiked-in example data.
}


\description{
  Objects of class \code{Synapter}, implented in the \code{synapter}
  package. The 6 instances represent triplicate run of the Universal
  Proteomics Standard (UPS1) 48 protein mix in an E. coli background,
  spiked in at 25 and 50 femtomoles. 
}

\usage{data(ups25c)}

\details{
  Each instance has been created with the \code{synergise} function. The
  respective MSe final petptide and MSe Pep3D final are also provided in
  the package (see \code{\link{getMSeFinalPeptide}} and
  \code{\link{getMSePep3D}}). The identification peptides is a master
  HDMSe file (see \code{\link{getMaster}}). The code generating the
  instances is available in the \code{synergise.R} R file, in the
  \code{scripts} package directory.
}

\source{
  Bond N. J., Shliaha P.V., Gatto L. and Lilley K.S., in prep.
}

\references{
  See the \code{synapter} vignette from the \code{synapter} package,
  available with \code{ysnapterGuide()} for a description of the
  underlying concepts and detailed description of the pipeline.
}

\examples{
library(synapter)
data(ups25a)
performance(ups25a)
}

\keyword{datasets}
