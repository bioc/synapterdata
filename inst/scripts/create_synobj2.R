## Please find the raw data at:
## http://proteome.sysbiol.cam.ac.uk/lgatto/synapter/data/
library("synapter")

inlist <- list(
  quantpeptide = "fermentor_02_sample_01_HDMSE_01_IA_final_peptide.csv.gz",
  quantpep3d = "fermentor_02_sample_01_HDMSE_01_Pep3DAMRT.csv.gz",
  identpeptide = "fermentor_03_sample_01_HDMSE_01_IA_final_peptide.csv.gz",
  fasta = "S.cerevisiae_Uniprot_reference_canonical_18_03_14.fasta")

spectrumlist <- list(
  identspectrum = "fermentor_03_sample_01_HDMSE_01_Pep3D_Spectrum.xml.gz",
  quantspectrum = "fermentor_02_sample_01_HDMSE_01_Pep3D_Spectrum.xml.gz")

fragmentlist <- list(
  identfragments = "fermentor_03_sample_01_HDMSE_01_IA_final_fragment.csv.gz",
  quantfragments = "fermentor_02_sample_01_HDMSE_01_IA_final_fragment.csv.gz")

synobj2 <- synergise(inlist, outputdir = tempdir())
loadSpectrumXmlFiles(synobj2, spectrumlist)
loadFragmentCsvFiles(synobj2, fragmentlist)

save(synobj2, file = "synobj2.rda")

