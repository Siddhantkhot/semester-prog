#chickwts dataset
cat("\n number of chicks fed with various feeds\n")
print(table(chickwts$feed))

cat("\n five number summary of chicks weight\n")
print(quantile(chickwts$weight))

cat("\n mean weights of chicks for various feeds\n")
print(tapply(chickwts$weight,chickwts$feed,mean))

#quakes dataset
cat("\n five number summary of all magnitudes of events
    that occur at a depth of 400km or deeper \n ")
print(quantile(quakes$mag[quakes$depth>=400]))

cat("\n standard deviation of number of stations which are
    affected at depth of 600km or deeper and of 5 or higher\n")
print(sd(quakes$stations[quakes$depth>=600&quakes$mag>=5]))

plot(quakes$long,quakes$lat,xlab="longitude",ylab="latitude",
     main="spread of earthquake")

cat("\n correlation between magnitude of earthquake & number
    of stations\n")
print(cor(quakes$mag,quakes$stations))

plot(quakes$mag,quakes$stations,xlab="magnitude",
     ylab="no. of stations")
cat("\n correlation is a positive number,thet shows more number
     of station are affected where magnitude of earthquakes
    is higher:")

