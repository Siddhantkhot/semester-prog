# One-sample t-test
# Population mean of potato yield is 20kg
population_mean <- 20

# sample data - yield from 12 farms
df1 <- data.frame(weight = c(21, 25, 19, 17, 14, 23, 22, 21, 19, 18, 24, 19))

# Perform one-sample t-test
result <- t.test(df1$weight, mu = population_mean, alternative = "greater")

# Print the results
cat("\n One-sample t-test\n")
cat("\n Sample data =", df1$weight)
cat("\n Population mean =", population_mean)
cat("\n One-sample t-statistic value =", result$statistic)
cat("\n t-critical value = 1.796")
cat("\n t-statistic is less than t-critical. Hence we fail to reject null hypothesis")
cat("\n Conclusion - The difference between population mean and sample mean is by chance. and not by any significant difference.")


# Two-sample t-test
# attendance of students in two divisions
df2 <- data.frame(divA = c(23, 24, 25, 22, 26, 24, 23, 25, 21, 24),
                  divB = c(28, 26, 27, 30, 25, 28, 27, 29, 26, 28))

# Perform two-sample t-test
result <- t.test(df2$divA, df2$divB, alternative="two.sided")

# Print the results
cat("\n\n Two-sample t-test \n")
cat("\n Attendance of division A =", df2$divA)
cat("\n Attendance of division B =", df2$divB)
cat("\n Sample Means =", result$estimate)
cat("\n Two-sample T-Statistic :", abs(result$statistic))
cat("\n t-critical value = 2.101")
cat("\n t-statistic is greater than t-critical. Hence we reject null hypothesis.")
cat("\n Conclusion - the means of attendance in two divisions is unequal.")

# Compute ANOVA coefficent for given data
#install(tidyr)
library(tidyr)

#Create dataframe 
df3 <- data.frame(A=c(6, 7, 3, 8), B=c(5, 5, 3, 7), C=c(5, 4, 3, 4))

# reshape the dataframe into long format
df_long <- gather(df3, key="variable", value="value")

# Perform ANOVA
model <- aov (formula=value~variable, data= df_long)
#fetch the f-value
f <- summary(model)[[1]][1,4]

#print the results
cat("\n\n ANOVA \n")
print(df3)
cat("\n Calculated F-value =", f)
cat("\n F-value from the F-table = 4.26")
cat("\n Calculated F-value is less than F-value from the F-Table.")
cat("\n Hence, we fail to reject null hypothesis. ")
cat("\n The differences in variety of wheat crop is insignificant.")
