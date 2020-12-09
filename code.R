library(bnlearn)
library(Rgraphviz)

################# Discrete #####################
learning.test<-learning.test.generator(n=5000,seed=1)
learn.net = model2network("[A][C][F][B|A][D|A:C][E|B:F]")
graphviz.plot(learn.net)
graphviz.plot(cpdag(learn.net))

graphviz.compare(learn.net,reverse.arc(learn.net, "A", "B"))
score(learn.net,learning.test)
score(reverse.arc(learn.net, "A", "B"), learning.test)

##### Constraint-based #####
G1.pc<-pc.stable(learning.test)
graphviz.plot(G1.pc)
compare(G1.pc,learn.net)
graphviz.compare(G1.pc,learn.net)
hamming(G1.pc,learn.net)
shd(G1.pc,learn.net)

G1.iamb<-iamb(learning.test)
graphviz.plot(G1.iamb)
compare(G1.iamb,learn.net)
graphviz.compare(G1.iamb,learn.net)
hamming(G1.iamb,learn.net)
shd(G1.iamb,learn.net)


##### Score-based #####
help(hc)
G1.hc<-hc(learning.test)
graphviz.plot(G1.hc)
compare(G1.hc,learn.net)
graphviz.compare(G1.hc,learn.net)
hamming(G1.hc,learn.net)
shd(G1.hc,learn.net)


##### Hybrid #####
G1.mmhc<-mmhc(learning.test)
graphviz.plot(G1.mmhc)
compare(G1.mmhc,learn.net)
graphviz.compare(G1.mmhc,learn.net)
hamming(G1.mmhc,learn.net)
shd(G1.mmhc,learn.net)

G1.rsmax2<-rsmax2(learning.test)
graphviz.plot(G1.rsmax2)
compare(G1.rsmax2,learn.net)
graphviz.compare(G1.rsmax2,learn.net)
hamming(G1.rsmax2,learn.net)
shd(G1.rsmax2,learn.net)

################### Gaussian ###################3
gaussian.test<-gaussian.test.generator(n=500,seed=1)
gaussian.net = model2network("[A][B][E][G][C|A:B][D|B][F|A:D:E:G]")
graphviz.plot(gaussian.net)
graphviz.plot(cpdag(gaussian.net))

##### Constraint-based #####
G2.pc<-pc.stable(gaussian.test)
graphviz.plot(G2.pc)
compare(G2.pc,gaussian.net)
graphviz.compare(G2.pc,gaussian.net)
hamming(G2.pc,gaussian.net)
shd(G2.pc,gaussian.net)

G2.iamb<-iamb(gaussian.test)
graphviz.plot(G2.iamb)
compare(G2.iamb,gaussian.net)
graphviz.compare(G2.iamb,gaussian.net)
hamming(G2.iamb,gaussian.net)
shd(G2.iamb,gaussian.net)


##### Score-based #####
G2.hc<-hc(gaussian.test)
graphviz.plot(G2.hc)
compare(G2.hc,gaussian.net)
graphviz.compare(G2.hc,gaussian.net)
hamming(G2.hc,gaussian.net)
shd(G2.hc,gaussian.net)


##### Hybrid #####
G2.mmhc<-mmhc(gaussian.test)
graphviz.plot(G2.mmhc)
compare(G2.mmhc,gaussian.net)
graphviz.compare(G2.mmhc,gaussian.net)
hamming(G2.mmhc,gaussian.net)
shd(G2.mmhc,gaussian.net)

G2.rsmax2<-rsmax2(gaussian.test)
graphviz.plot(G2.rsmax2)
compare(G2.rsmax2,gaussian.net)
graphviz.compare(G2.rsmax2,gaussian.net)
hamming(G2.rsmax2,gaussian.net)
shd(G2.rsmax2,gaussian.net)