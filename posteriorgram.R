#!/usr/bin/Rscript
## There is nothong more easy that R graphics...

x <- read.table("out.txt")
tab <- as.character(read.table("phonetab.txt")$V1)
nph <- length(tab)

pdf(file="out.pdf", height=7, width=14)

par(mar=c(2,2.5,1,0.5))
image(t(as.matrix(-x)), yaxt="n", col=gray.colors(100))
axis(2, at=(1:nph-1)/(nph-1), labels=tab, las=2)

graphics.off()


40
