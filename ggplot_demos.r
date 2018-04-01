# Read more at: https://www.tatvic.com/blog/7-visualizations-learn-r/?utm_source=copytext&utm_medium=text&utm_campaign=textshare
install.packages('ggplot2')
library(ggplot2) # ggplot2 is an R library for visualizations train.

ggplot(mpg,aes(x=displ,y=hwy))+geom_point()

ggplot(mpg,aes(displ,cty,colour=class))+geom_point()

train<-read.csv('E:/Big Mart Dataset - Sheet1.csv', header = TRUE)
ggplot(train, aes(Item_Visibility, Item_MRP)) + geom_point() + scale_x_continuous("Item Visibility", breaks = seq(0,0.35,0.05))+ scale_y_continuous("Item MRP", breaks = seq(0,270,by = 30))+ theme_bw()

ggplot(train, aes(Item_Visibility, Item_MRP)) + geom_point(aes(color = Item_Type)) +
scale_x_continuous("Item Visibility", breaks = seq(0,0.35,0.05))+
scale_y_continuous("Item MRP", breaks = seq(0,270,by = 30))+
theme_bw() + labs(title="Scatterplot")

ggplot(train, aes(Item_Visibility, Item_MRP)) + geom_point(aes(color = Item_Type)) +
scale_x_continuous("Item Visibility", breaks = seq(0,0.35,0.05))+
scale_y_continuous("Item MRP", breaks = seq(0,270,by = 30))+
theme_bw() + labs(title="Scatterplot") + facet_wrap( ~ Item_Type)

ggplot(train, aes(Outlet_Identifier, Item_Outlet_Sales)) + geom_boxplot(fill = "red")+
scale_y_continuous("Item Outlet Sales", breaks= seq(0,15000, by=500))+
labs(title = "Box Plot", x = "Outlet Identifier")

ggplot(train, aes(Outlet_Identifier, Item_Type))+
  geom_raster(aes(fill = Item_MRP))+
  labs(title ="Heat Map", x = "Outlet Identifier", y = "Item Type")+
  scale_fill_continuous(name = "Item MRP")

