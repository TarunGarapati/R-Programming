library(mlbench)
data(Glass)
Glass<-Glass[!duplicated(Glass),]
x<-as.data.frame(Glass)

Q1<-quantile(x$RI,0.25)
Q2<-quantile(x$RI,0.75)
y<-IQR(x$RI)
high1<-Q2+(1.5*y)
low1<-Q1-(1.5*y)

Q1<-quantile(x$Na,0.25)
Q2<-quantile(x$Na,0.75)
y<-IQR(x$Na)
high2<-Q2+(1.5*y)
low2<-Q1-(1.5*y)

Q1<-quantile(x$Mg,0.25)
Q2<-quantile(x$Mg,0.75)
y<-IQR(x$Mg)
high3<-Q2+(1.5*y)
low3<-Q1-(1.5*y)

Q1<-quantile(x$Al,0.25)
Q2<-quantile(x$Al,0.75)
y<-IQR(x$Al)
high4<-Q2+(1.5*y)
low4<-Q1-(1.5*y)

Q1<-quantile(x$Si,0.25)
Q2<-quantile(x$Si,0.75)
y<-IQR(x$Si)
high5<-Q2+(1.5*y)
low5<-Q1-(1.5*y)

Q1<-quantile(x$K,0.25)
Q2<-quantile(x$K,0.75)
y<-IQR(x$K)
high6<-Q2+(1.5*y)
low6<-Q1-(1.5*y)

Q1<-quantile(x$Ca,0.25)
Q2<-quantile(x$Ca,0.75)
y<-IQR(x$Ca)
high7<-Q2+(1.5*y)
low7<-Q1-(1.5*y)

Q1<-quantile(x$Ba,0.25)
Q2<-quantile(x$Ba,0.75)
y<-IQR(x$Ba)
high8<-Q2+(1.5*y)
low8<-Q1-(1.5*y)

Q1<-quantile(x$Fe,0.25)
Q2<-quantile(x$Fe,0.75)
y<-IQR(x$Fe)
high9<-Q2+(1.5*y)
low9<-Q1-(1.5*y)


x_new<-subset(x,x$RI>low1 & x$RI<high1 & x$Na>low2 & x$Na<high2 & x$Mg>low3 & x$Mg<high3 & x$Al>low4 & x$Al<high4 & x$Si>low5 & x$Si<high5 & x$K>low6 & x$K<high6 & x$Ca>low7 & x$Ca<high7 & x$Ba==0 & x$Fe>low9 & x$Fe<high9)
x_new
par(mfrow=c(1,9))
par(mar=c(2,2,2,2))

a<-fivenum(x_new$RI,na.rm=TRUE)
b<-fivenum(x_new$Na,na.rm=TRUE)
c<-fivenum(x_new$Mg,na.rm=TRUE)
d<-fivenum(x_new$Al,na.rm=TRUE)
e<-fivenum(x_new$Si,na.rm=TRUE)
f<-fivenum(x_new$K,na.rm=TRUE)
g<-fivenum(x_new$Ca,na.rm=TRUE)
h<-fivenum(x_new$Ba,na.rm=TRUE)
i<-fivenum(x_new$Fe,na.rm=TRUE)

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

