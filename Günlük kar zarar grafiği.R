
library(ggplot2)

days<-c("Pazartesi","Sali","Carsamba","Persembe","Cuma","Cumartesi","Pazar")

gelir<-(c(100,25,-80,190,-200,50,-120))


kaynak<-data.frame(days=days,
                   gelir=gelir,
                   durum=ifelse(gelir>0,"kar","zarar"))


ggplot(kaynak, aes(days,gelir, colour = durum))+
  geom_point(size=5)+
  scale_color_manual(values = c("kar"="green","zarar"="red"))+
  labs(title = "Gunluk gelir durumu",x="Gunler",y="Kazanc")
