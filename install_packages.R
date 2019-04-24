# Resource: http://www.bnlearn.com/about/teaching/slides-bnshort.pdf

dir_name = "/home/sankarshan/Documents/code/bayesianLearningInR"
setwd(dir_name)

install.packages("bnlearn")

# For displaying graphs, I will use theRgraphvizfromBioConductor:
source("http://bioconductor.org/biocLite.R")
biocLite(c("graph", "Rgraphviz"))
biocLite("RBGL")

# For exact inference on discrete Bayesian networks:
biocLite(c("graph", "Rgraphviz", "RBGL"))
install.packages("gRain")

# Other packages from CRAN:
install.packages(c("pcalg", "catnet", "abn"))
