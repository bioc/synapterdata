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

synobj3 <- Synapter(inlist, master=FALSE)

save(synobj3, file="synobj3.rda", compress="xz")

## > sessionInfo()
## R Under development (unstable) (2017-04-02 r72473)
## Platform: x86_64-pc-linux-gnu (64-bit)
## Running under: Ubuntu 14.04.1 LTS

## Matrix products: default
## BLAS: /usr/lib/libblas/libblas.so.3.0
## LAPACK: /usr/lib/lapack/liblapack.so.3.0

## locale:
##  [1] LC_CTYPE=en_GB.UTF-8       LC_NUMERIC=C              
##  [3] LC_TIME=en_GB.UTF-8        LC_COLLATE=en_GB.UTF-8    
##  [5] LC_MONETARY=en_GB.UTF-8    LC_MESSAGES=en_GB.UTF-8   
##  [7] LC_PAPER=en_GB.UTF-8       LC_NAME=C                 
##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
## [11] LC_MEASUREMENT=en_GB.UTF-8 LC_IDENTIFICATION=C       

## attached base packages:
## [1] parallel  stats     graphics  grDevices utils     datasets  methods  
## [8] base     

## other attached packages:
## [1] synapter_1.99.0     MSnbase_2.1.14      ProtGenerics_1.6.0 
## [4] BiocParallel_1.8.1  mzR_2.8.1           Rcpp_0.12.10       
## [7] Biobase_2.34.0      BiocGenerics_0.20.0

## loaded via a namespace (and not attached):
##  [1] qvalue_2.6.0          reshape2_1.4.2        splines_3.5.0        
##  [4] lattice_0.20-35       colorspace_1.3-2      htmltools_0.3.5      
##  [7] stats4_3.5.0          vsn_3.42.3            XML_3.98-1.6         
## [10] survival_2.41-2       affy_1.52.0           RColorBrewer_1.1-2   
## [13] cleaver_1.12.0        affyio_1.44.0         foreach_1.4.3        
## [16] plyr_1.8.4            mzID_1.12.0           stringr_1.2.0        
## [19] zlibbioc_1.20.0       Biostrings_2.42.1     munsell_0.4.3        
## [22] pcaMethods_1.66.0     gtable_0.2.0          codetools_0.2-15     
## [25] evaluate_0.10         knitr_1.15.1          IRanges_2.8.2        
## [28] doParallel_1.0.10     BiocInstaller_1.24.0  preprocessCore_1.36.0
## [31] readr_1.1.0           scales_0.4.1          backports_1.0.5      
## [34] limma_3.30.13         S4Vectors_0.12.2      XVector_0.14.1       
## [37] impute_1.48.0         ggplot2_2.2.1         hms_0.3              
## [40] digest_0.6.12         stringi_1.1.3         grid_3.5.0           
## [43] rprojroot_1.2         tools_3.5.0           magrittr_1.5         
## [46] lazyeval_0.2.0        tibble_1.3.0          MASS_7.3-47          
## [49] Matrix_1.2-9          rmarkdown_1.4         iterators_1.0.8      
## [52] R6_2.2.0              MALDIquant_1.16.1     multtest_2.30.0      
## [55] compiler_3.5.0