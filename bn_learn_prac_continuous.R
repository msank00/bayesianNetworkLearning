# URL: http://www.bnlearn.com/examples/fit/
dir_name = "/home/sankarshan/Documents/code/bayesianLearningInR"
setwd(dir_name)

# clearing the variables
rm(list = ls())

library(bnlearn)
data(gaussian.test)

pdag = iamb(gaussian.test)
undirected.arcs(pdag)

dag = set.arc(pdag, "D", "B")
fit = bn.fit(dag, gaussian.test)
fit
bn.fit.xyplot(fit)

bn.fit.histogram(fit)
