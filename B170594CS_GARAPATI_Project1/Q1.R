library(mlbench)
data(Glass)
Glass<-Glass[!duplicated(Glass),]
x<-as.data.frame(Glass)

a<-fivenum(x$RI,na.rm=TRUE)
b<-fivenum(x$Na,na.rm=TRUE)
c<-fivenum(x$Mg,na.rm=TRUE)
d<-fivenum(x$Al,na.rm=TRUE)
e<-fivenum(x$Si,na.rm=TRUE)
f<-fivenum(x$K,na.rm=TRUE)
g<-fivenum(x$Ca,na.rm=TRUE)
h<-fivenum(x$Ba,na.rm=TRUE)
i<-fivenum(x$Fe,na.rm=TRUE)

par(mfrow=c(1,9))
par(mar=c(2,2,2,2))
boxplot(a,horizontal=TRUE,main="RI")
boxplot(b,horizontal=TRUE,main="Na")
boxplot(c,horizontal=TRUE,main="Mg")
boxplot(d,horizontal=TRUE,main="Al")
boxplot(e,horizontal=TRUE,main="Si")
boxplot(f,horizontal=TRUE,main="K")
boxplot(g,horizontal=TRUE,main="Ca")
boxplot(h,horizontal=TRUE,main="Ba")
boxplot(i,horizontal=TRUE,main="Fe")

#boxplot(a,b,c,d,e,f,g,h,i,horizontal=TRUE,names=c("RI","Na","Mg","Al","Si","K","Ca","Ba","Fe"),col=c("red","blue","green","yellow","pink","black","orange","brown","grey"),main="Glass Type")
