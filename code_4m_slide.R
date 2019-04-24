# Resource: http://www.bnlearn.com/about/teaching/slides-bnshort.pdf
# page: 25

dir_name = "/home/sankarshan/Documents/code/bayesianLearningInR"
setwd(dir_name)

# clearing variable
rm(list = ls ())

# clearing old plots
dev.off()

library(bnlearn)

# setting individual arcs
survey.dag = empty.graph(nodes = c("A", "S", "E", "O", "R", "T"))
survey.dag = set.arc(survey.dag, from = "A", to = "E")
survey.dag = set.arc(survey.dag, from = "S", to = "E")
survey.dag = set.arc(survey.dag, from = "E", to = "O")
survey.dag = set.arc(survey.dag, from = "E", to = "R")
survey.dag = set.arc(survey.dag, from = "O", to = "T")
survey.dag = set.arc(survey.dag, from = "R", to = "T")


# setting the whole arc set at once
arc.set = matrix(c("A", "E","S", "E","E", "O","E", "R","O", "T","R", "T"),
                 byrow = TRUE, 
                 ncol = 2,
                 dimnames = list(NULL, c("from", "to")))
arcs(survey.dag) = arc.set

amat(survey.dag) =matrix(c(0L, 0L, 1L, 0L, 0L, 0L,
                           0L, 0L, 1L, 0L, 0L, 0L,
                           0L, 0L, 0L, 1L, 1L, 0L,
                           0L, 0L, 0L, 0L, 0L, 1L,
                           0L, 0L, 0L, 0L, 0L, 1L,
                           0L, 0L, 0L, 0L, 0L, 0L),
                         byrow = TRUE, 
                         nrow = 6, 
                         ncol = 6,
                         dimnames = list(nodes(survey.dag), nodes(survey.dag)))

survey.dag = model2network("[A][S][E|A:S][O|E][R|E][T|O:R]")
# set.arc(survey.dag, from = "T", to = "E")

survey.dag
graphviz.plot(survey.dag)

survey.dag = set.arc(survey.dag, from = "A", to = "O")
survey.dag = drop.arc(survey.dag, from = "E", to = "O")
survey.dag = reverse.arc(survey.dag, from = "R", to = "E")

graphviz.plot(survey.dag)

skeleton(survey.dag)
moral(survey.dag)


mbE = mb(survey.dag, "E")

"E" %in% mbE

hlight = list(nodes = c("E", "O"),
              arcs = c("E", "O"),
              col = "grey",
              textCol = "grey")
pp = graphviz.plot(survey.dag,highlight = hlight)

edgeRenderInfo(pp) =list(col = c("S~E" = "black","E~R" = "black"),
                         lwd = c("S~E" = 3, "E~R" = 3))

nodeRenderInfo(pp) =list(col =c("S" = "black", "E" = "black","R" = "black"),
                         textCol =c("S" = "black", "E" = "black","R" = "black"),
                         fill = c("E" = "grey"))

# renderGraph(pp)
