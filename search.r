setwd("/home/user/Документы/ECM-312/")
mytable<-read.table("China.csv", header=TRUE, sep=",")
mytable
ymax<-max(mytable[][2:8])
ymax
names(mytable)
attach(mytable)
chars=c("Терроризм","Террорист","Оккупация","Наркотики","Насилие","Демократия","Развитие")
plot(Year,terrorism,xlab="Год", ylab="Количество упоминаний", main="Частота упоминаний характеристик для Китая",pch=15,col="blue",type="b",xlim=c(2000,2014),ylim=c(0,ymax))
lines(Year,terrorist,pch=16,col="green",type="b",xlim=c(2000,2014),ylim=c(0,ymax))
lines(Year,occupation,pch=17,col="red",type="b",xlim=c(2000,2014),ylim=c(0,ymax))
lines(Year,narcotic,pch=18,col="yellow",type="b",xlim=c(2000,2014),ylim=c(0,ymax))
lines(Year,violation,pch=19,col="black",type="b",xlim=c(2000,2014),ylim=c(0,ymax))
lines(Year,democracy,pch=14,col="brown",type="b",xlim=c(2000,2014),ylim=c(0,ymax))
lines(Year,development,pch=13,col="grey",type="b",xlim=c(2000,2014),ylim=c(0,ymax))
legend("topleft",inset=.01,title="Характеристики",chars,lty=c(1,1),pch=c(15,16,17,18,19,14,13),col=c("blue","green","red","yellow","black","brown","grey"))

#png(filename="China.png",units="px",width=1200,res=96,pointsize=12,family="serif")
cairo_pdf(filename="China.pdf",width=7,height=4,onefile=TRUE,pointsize=12,family="serif")
plot(Year,terrorism,xlab="Год", ylab="Количество упоминаний", main="Частота упоминаний характеристик для Китая",pch=15,col="blue",type="b",xlim=c(2000,2014),ylim=c(0,ymax))
lines(Year,terrorist,pch=16,col="green",type="b",xlim=c(2000,2014),ylim=c(0,ymax))
lines(Year,occupation,pch=17,col="red",type="b",xlim=c(2000,2014),ylim=c(0,ymax))
lines(Year,narcotic,pch=18,col="yellow",type="b",xlim=c(2000,2014),ylim=c(0,ymax))
lines(Year,violation,pch=19,col="black",type="b",xlim=c(2000,2014),ylim=c(0,ymax))
lines(Year,democracy,pch=14,col="brown",type="b",xlim=c(2000,2014),ylim=c(0,ymax))
lines(Year,development,pch=13,col="grey",type="b",xlim=c(2000,2014),ylim=c(0,ymax))
legend("topleft",inset=.01,title="Характеристики",chars,lty=c(1,1),pch=c(15,16,17,18,19,14,13),col=c("blue","green","red","yellow","black","brown","grey"))
dev.off()