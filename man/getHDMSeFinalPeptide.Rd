\name{getHDMSeFinalPeptide}
\alias{getHDMSeFinalPeptide}
\alias{getMSeFinalPeptide}
\alias{getMSePep3D}
\alias{getFasta}

\docType{data}

\title{ PLGS csv data and fasta files }

\description{
  The PLGS HDMSe final peptide, MSe final peptide and MSe Pep3D output
  files are provided as gzipped csv files and their repective full paths
  can be obtained with \code{getHDMSeFinalPeptide},
  \code{getMSeFinalPeptide} and \code{getMSePep3D}. These can then be
  used directly in the respective \code{synpater} functions and methods,
  as \code{read.csv} automatically uncompressed the files.

  The fasta database file is also available in as a gnuzip
  archive. Fasta file are however not automatically handled in gzipped
  format. \code{getFasta} first decompresses the file in a temporary
  directory and returns the full path to that uncompressed file.  
}

\usage{
getHDMSeFinalPeptide()
getMSeFinalPeptide()
getMSePep3D()
getFasta()
}



\examples{
getHDMSeFinalPeptide()
}


\keyword{datasets}
