val1 <- as.integer(readline(prompt="Enter a first number:"))
val2 <- as.integer(readline(prompt="Enter a second number:"))
cat("1.add 2.sub 3.mul 4.div 5.module 6.power")
ch <- readline(prompt = "Enter your choice:")
switch(
    ch,
       '1'=cat("Addition:",val1+val2),
       '2'=cat("subtraction:",val1-val2),
       '3'=cat("multiplication:",val1*val2),
       '4'=cat("Division:",val1/val2),
       '5'=cat("Modulus:",val1%%val2),
       '6'=cat("Power:",val1^val2)
    )