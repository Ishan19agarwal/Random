#1)
chest<-c(rep("gold",20),rep("silver",30),rep("bronze",50));
# or sample(c("gold","silver","bronze"),10,replace=T,prob=c(.2,.3,.5))
sample(chest,10)
#learn cex command
sample(c("success","failure"),10,replace=T,prob=c(.9,.1))

x<-as.integer(any(duplicated(sample(365,50,replace=T))))
print(x)


prob<-function(x,y,z){(x*y)/z}
prob(.85,.2,.4)
#2)

calculate_birthday_prob <- function(n) {
  no_shared_birthday <- 1
  for (i in 1:n) {
    no_shared_birthday <- no_shared_birthday * (365 - i + 1) / 365
  }
  return(1 - no_shared_birthday)
}
n <- 25
calculate_birthday_prob(n)


#second part->>
calculate_birthday_prob <- function() {
  no_shared_birthday <- 1
  i<-1
  while (no_shared_birthday>.5) {
    no_shared_birthday <- no_shared_birthday * (365 - i + 1) / 365
    i<-i+1
  }
  return(i-1)
}
calculate_birthday_prob()

#3)

P_Cloudy <- 0.40  
P_Rain <- 0.20  
P_Cloudy_given_Rain <- 0.85 

P_A_given_B <- P_Clouds_given_Rain

P_B_given_A <- (P_A_given_B * P_Rain) / P_Cloudy
print(paste("Result:",P_B_given_A  ))

#4)
data("iris")

range_sepal_width <- range(iris$Sepal.Width)
mean_sepal_width <- mean(iris$Sepal.Width)
median_sepal_width <- median(iris$Sepal.Width)
quartiles_sepal_width <- quantile(iris$Sepal.Width, c(0.25, 0.75))
iqr_sepal_width <- quartiles_sepal_width[2] - quartiles_sepal_width[1]
sd_sepal_width <- sd(iris$Sepal.Width)
var_sepal_width <- var(iris$Sepal.Width)
var_Petal_Width <- var(iris$Petal.Width)
sd_Petal_Width <- sd(iris$Petal.Width)

print("First few rows of the dataset:")
print(head(iris))
print("\nStructure of the dataset:")
print(str(iris))
print(paste("Range:", range_sepal_width[1], "-", range_sepal_width[2]))
print(paste("Mean:", mean_sepal_width))
print(paste("Median:", median_sepal_width))
print(paste("Q1:", quartiles_sepal_width[1], "Q3:", quartiles_sepal_width[2], "IQR:", iqr_sepal_width))
print(paste("Standard Deviation:", sd_sepal_width, "Variance:", var_sepal_width))
print(paste("Standard Deviation:", sd_Petal_Width, "Variance:", var_Petal_Width))




#5)


calculate_mode <- function(data) {
  unique_values <- unique(data)  
  print(unique_values)
  counts <- table(data)
  print(counts)
  max_count <- max(counts)  
  print(max_count)
  mode_value <- unique_values[counts == max_count] 
  if (length(mode_value) == 1) {
    return(mode_value)
  } else {
    return("No unique val")
  }
}

data <- c(1, 2, 2, 3, 4, 4, 4, 5)

ans <- calculate_mode(data)

if (ans!= "No unique val") {
  cat("Mode is:", ans, "\n")
} else {
  cat("No unique mode exists\n")
}

