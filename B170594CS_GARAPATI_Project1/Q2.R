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

a<-subset(x,x$RI>low1 & x$RI<high1 & x$Na>low2 & x$Na<high2 & x$Mg>low3 & x$Mg<high3 & x$Al>low4 & x$Al<high4 & x$Si>low5 & x$Si<high5 & x$K>low6 & x$K<high6 & x$Ca>low7 & x$Ca<high7 & x$Ba==0 & x$Fe>low9 & x$Fe<high9)
a