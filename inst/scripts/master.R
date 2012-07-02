library(synapter)
library(synapterdata)

hdmse <- getHDMSeFinalPeptide()
fasta <- getFasta()

cmb <- estimateMasterFdr(hdmse, fasta, masterFdr = 0.02)

master <- makeMaster(hdmse[bestComb(cmb)])

saveRDS(master, file = "../extdata/master.rds")
