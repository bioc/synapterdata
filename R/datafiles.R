synobj2Data <- function () {
    f <- system.file("extdata", "S.cerevisiae_Uniprot_reference_canonical_18_03_14.fasta", package="synapter")
    data(synobj3, package="synapterdata", envir=.GlobalEnv)
    .GlobalEnv$synobj3$DbFastaFile <- f
    ## .GlobalEnv$synobj3 <- updateObject(.GlobalEnv$synobj3)
}

getHDMSeFinalPeptide <- function() 
  dir(system.file("extdata", package = "synapterdata"),
      full.names = TRUE, pattern = "^HDMSe")


getMSeFinalPeptide <- function()
  dir(system.file("extdata", package = "synapterdata"),
      full.names = TRUE, pattern = "^MSe.*final_peptide")

getMSePep3D <- function()
  dir(system.file("extdata", package = "synapterdata"),
      full.names = TRUE, pattern = "^MSe.*Pep3DAMRT")
  
getFasta <- function() {
  fz <- system.file("extdata", "EcoliK12_enolase_UPSsimga_NB.fasta.zip",
                    package = "synapterdata")
  fas <- sub("\\.zip", "", basename(fz))
  td <- tempdir()
  unzip(fz, exdir = td, list = FALSE)
  return(file.path(td,fas))
}

getMaster <- function()
  dir(system.file("extdata", package = "synapterdata"),
      full.names = TRUE, pattern = "master.rds")

loadMaster <- function() {
  path <- getMaster()
  master <- readRDS(path)
  assign("master", master, envir = .GlobalEnv)
}
