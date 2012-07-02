library(synapter)
library(synapterdata)

msefp <- getMSeFinalPeptide()
mse3d <- getMSePep3D()
hdmse <- getMaster()
fas <- getFasta()

ups25a <- synergise(filenames = list(
                      identpeptide = hdmse,
                      quantpeptide = msefp[1],
                      quantpep3d = mse3d[1],
                      fasta = fas),
                    master = TRUE,
                    outputdir = tempdir(),
                    grid.nsd.from = 1, grid.nsd.to = 6, grid.nsd.by = 1,
                    grid.ppm.from = 7, grid.ppm.to = 11, grid.ppm.by = 1,
                    grid.subset = 0.1, uniquepep = TRUE)

ups25b <- synergise(filenames = list(
                      identpeptide = hdmse,
                      quantpeptide = msefp[2],
                      quantpep3d = mse3d[2],
                      fasta = fas),
                    master = TRUE,
                    outputdir = tempdir(),
                    grid.nsd.from = 1, grid.nsd.to = 6, grid.nsd.by = 1,
                    grid.ppm.from = 7, grid.ppm.to = 11, grid.ppm.by = 1,
                    grid.subset = 0.1, uniquepep = TRUE)

ups25c <- synergise(filenames = list(
                      identpeptide = hdmse,
                      quantpeptide = msefp[3],
                      quantpep3d = mse3d[3],
                      fasta = fas),
                    master = TRUE,
                    outputdir = tempdir(),
                    grid.nsd.from = 1, grid.nsd.to = 6, grid.nsd.by = 1,
                    grid.ppm.from = 7, grid.ppm.to = 11, grid.ppm.by = 1,
                    grid.subset = 0.1, uniquepep = TRUE)

ups50a <- synergise(filenames = list(
                      identpeptide = hdmse,
                      quantpeptide = msefp[4],
                      quantpep3d = mse3d[4],
                      fasta = fas),
                    master = TRUE,
                    outputdir = tempdir(),
                    grid.nsd.from = 1, grid.nsd.to = 6, grid.nsd.by = 1,
                    grid.ppm.from = 7, grid.ppm.to = 11, grid.ppm.by = 1,
                    grid.subset = 0.1, uniquepep = TRUE)

ups50b <- synergise(filenames = list(
                      identpeptide = hdmse,
                      quantpeptide = msefp[5],
                      quantpep3d = mse3d[5],
                      fasta = fas),
                    master = TRUE,
                    outputdir = tempdir(),
                    grid.nsd.from = 1, grid.nsd.to = 6, grid.nsd.by = 1,
                    grid.ppm.from = 7, grid.ppm.to = 11, grid.ppm.by = 1,
                    grid.subset = 0.1, uniquepep = TRUE)

ups50c <- synergise(filenames = list(
                      identpeptide = hdmse,
                      quantpeptide = msefp[6],
                      quantpep3d = mse3d[6],
                      fasta = fas),
                    master = TRUE,
                    outputdir = tempdir(),
                    grid.nsd.from = 1, grid.nsd.to = 6, grid.nsd.by = 1,
                    grid.ppm.from = 7, grid.ppm.to = 11, grid.ppm.by = 1,
                    grid.subset = 0.1, uniquepep = TRUE)

save(ups25a, file = "../../data/ups25a.rda", compress = "xz", compression_level = 9)
save(ups25b, file = "../../data/ups25b.rda", compress = "xz", compression_level = 9)
save(ups25c, file = "../../data/ups25c.rda", compress = "xz", compression_level = 9)

save(ups50a, file = "../../data/ups50a.rda", compress = "xz", compression_level = 9)
save(ups50b, file = "../../data/ups50b.rda", compress = "xz", compression_level = 9)
save(ups50c, file = "../../data/ups50c.rda", compress = "xz", compression_level = 9)
