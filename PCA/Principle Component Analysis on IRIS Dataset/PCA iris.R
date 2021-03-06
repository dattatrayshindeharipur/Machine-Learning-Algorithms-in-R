

protein_data = iris

summary(iris)
rownames(protein_data) = protein_data[,5]

protein_data = protein_data[,-5]

pr.out=prcomp(protein_data,scale=TRUE)
pr.out$rotation


pr.out$x=pr.out$x
biplot(pr.out,scale=0,cex=0.7)

pr.out$sdev
pr.var=pr.out$sdev^2

pve=pr.var/sum(pr.var)

plot(pve,xlab="Principle component", ylab="Proportion of the variance explained"
     ,ylim=c(0,1),type="b")

plot(cumsum(pve),xlab="Principle component", ylab="Cumulative Proportion of the variance explained"
     ,ylim=c(0,1),type="b")






