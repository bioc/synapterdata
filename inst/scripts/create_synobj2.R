## Please find the raw data at:
## http://proteome.sysbiol.cam.ac.uk/lgatto/synapter/data/
library("synapter")

inlist <- list(
  identpeptide = "fermentor_03_sample_01_HDMSE_01_IA_final_peptide.csv.gz",
  identfragments = "fermentor_03_sample_01_HDMSE_01_IA_final_fragment.csv.gz",
  quantpeptide = "fermentor_02_sample_01_HDMSE_01_IA_final_peptide.csv.gz",
  quantpep3d = "fermentor_02_sample_01_HDMSE_01_Pep3DAMRT.csv.gz",
  quantspectra = "fermentor_02_sample_01_HDMSE_01_Pep3D_Spectrum.xml.gz",
  fasta = "S.cerevisiae_Uniprot_reference_canonical_18_03_14.fasta")

synobj2 <- Synapter(inlist, master=FALSE)

save(synobj2, file="synobj2.rda", compress="xz")