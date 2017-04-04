\name{synobj2}
\alias{synobj2}
\alias{synobj2RData}
\docType{data}

\title{
  Example Synapter object
}

\description{

  An instance of class \code{Synapter} used to demonstrate ion mobility
  separation and peak matching in the respective synapter vignettes. The
  object can be created using the files available at
  \url{http://proteome.sysbiol.cam.ac.uk/lgatto/synapter/data/} and the
  script \code{create_synobj2.R} in \code{system.file("scripts", package
  = "synapterdata")}.

  Use \code{synobj2RData} to load it.

}

\usage{
data(synobj2)
synobj2RData()
}

\format{
  An instance of class \code{Synapter}.
}


\examples{
synobj2RData()
synobj2
}

\keyword{datasets}
