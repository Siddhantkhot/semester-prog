n<-1:5 #numbers
s<-n^2 #numbers
c<-n^3 #cubes

#line chart for cubes
plot(n,c,xlab="numbers",ylab="squares/cubes",col="blue")

#scatter chart for squares
lines(n,s,type="p",col="red")

#marks scored by students in a subject
marks<-c(64,62,62,74,71,81,82,68,77)

#boxplot
boxplot(marks, xlab="students",ylab="marks",main="box plot",col="orange")

#histogram
hist(marks,lab="marks",ylab="no.of students",main="histogram",col="green")

#pie chart
sales<-c(30,20,60,55)
brand<-c("hyundai","mahindra","suzuki","tata")

#adding percentage to pies
piepercent<-round(100*sales/sum(sales),2)

#plotting pie
pie(sales,labels=piepercent,main="car sales for december 2023", col=rainbow(length (sales)))

#adding legend
legend("topright",brand,fill=rainbow (length (sales)),cex = 0.7)