A<-rbind(c(4,5,6),c(8,5,9),c(9,6,4))
B<-rbind(c(4,5,6),c(8,5,9),c(5,6,7))

cat("Matrix A\n")
print(A)
cat("Matrix B\n")

print(B)
cat("Addition of matrix:\n")
print(A+B)

cat("Subtraction of matrix:\n")
print(A-B)

cat("Multiplication of matrix:\n")
print(A%*%B)

cat("Division of matrix:\n")
print(A/B)