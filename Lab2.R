vector<-c(5,10,15,20,25,30)
print("The Vextor is")
print(vector)
max(vector)
print(paste("The maximum value of the given vector is ",max(vector)))
print(paste("The maximum value of the given vector is ",min(vector)))

num=as.integer(readline(prompt="Enter a number"))
factorial=1
if(num<0){
  print("Erorr as number is negative")
}else if(num!=0){
  for (i in num:1) {
    factorial <- factorial * i
  }
}
print(paste("the factorial of the number is ",factorial))

range=as.integer(readline(prompt="Enter the range"))
first=0
second=1
sum=0
for(i in 1:range){
  sum=first+second;
  print(sum)
  first=second
  second=sum
}

add <- function(x, y) {
  return(x + y)
}

subtract <- function(x, y) {
  return(x - y)
}

multiply <- function(x, y) {
  return(x * y)
}

divide <- function(x, y) {
  if (y != 0) {
    return(x / y)
  } else {
    return("Cannot divide by zero")
  }
}

while (TRUE) {
  print("Select operation:")
  print("1. Add")
  print("2. Subtract")
  print("3. Multiply")
  print("4. Divide")
  print("5. Exit")
  
  choice <- as.integer(readline("Enter choice (1/2/3/4/5): "))
  
  if (choice == 5) {
    print("Exiting the calculator.")
    break
  }
  
  if (choice >= 1 && choice <= 4) {
    num1 <- as.numeric(readline("Enter first number: "))
    num2 <- as.numeric(readline("Enter second number: "))
    
    if (choice == 1) {
      result <- add(num1, num2)
    } else if (choice == 2) {
      result <- subtract(num1, num2)
    } else if (choice == 3) {
      result <- multiply(num1, num2)
    } else if (choice == 4) {
      result <- divide(num1, num2)
    }
    
    print(paste("Result:", result))
    
  } else {
    print("Invalid choice. Please select a valid operation.")
  }
}



# Sample data
x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 6, 8, 10)

plot(x, y, type = "l",col = "red", xlab = "X-axis", ylab = "Y-axis", main = "Simple Line Plot")
lines(c(2, 3), c(4, 7), type = "l", col = "blue")

plot(x, y, pch = 3, col = "blue", xlab = "X-axis", ylab = "Y-axis", main = "Scatter Plot with Different Symbols")

# Sample data
data <- c(10, 15, 7, 20, 12)
names <- c("A", "B", "C", "D", "E")

# Create a barplot
barplot(data, names.arg = names, col = "blue", main = "Barplot Example", ylab = "Values")
# Sample data (replace this with your own data)
data <- c(23, 45, 67, 34, 56, 78, 90, 45, 23, 67, 56, 34, 12, 78)

# Create a histogram
hist(data, 
     main = "Histogram Example",          # Title of the histogram
     xlab = "Values",                    # Label for the x-axis
     ylab = "Frequency",                 # Label for the y-axis
     col = "skyblue",                    # Fill color for the bars
     border = "black",                   # Border color for the bars
     breaks = 10)                        # Number of bins or breaks

# Create two sets of sample data
x <- 1:10
y1 <- x^2
y2 <- 2 * x

# Set the layout with two plots in one row
layout(matrix(c(1, 2), nrow = 1))

# Plot the first graph
plot(x, y1, type = "l", col = "blue", main = "Plot 1", xlab = "X", ylab = "Y")

# Plot the second graph
plot(x, y2, type = "l", col = "red", main = "Plot 2", xlab = "X", ylab = "Y")

# Reset the layout to default
layout(1)
lines(c(2,3),c(4,7))
# Create a basic plot with points
plot(1:5, c(2, 4, 6, 8, 10), type = "o", col = "blue", pch = 16, ylim = c(0, 12), xlab = "X", ylab = "Y")

# Add a line segment from (2, 4) to (3, 7)
lines(c(2, 3), c(4, 7), col = "red")