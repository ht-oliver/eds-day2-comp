# Making vectors

# Character vector

ducks <- c("billy", "khora", "flipper", "waddle")
class(ducks)
typeof(ducks)

# Numeric vector
weights <- c(50, 55, 25, 35)
class(weights)
typeof(weights)

# Integer vector. Adding an L makes these integers
duck_age <- c(5L, 6L, 1L, 7L)
class(duck_age)
typeof(duck_age)

# Check with a logical
is.numeric(duck_age)

#What happens when we combine classes?
duck_info <- c("billy", 50, 5L)
class(duck_info)
duck_info

# Create vectors with named elements
duck_food <- c(billy = "bread",
              khora = "kibble",
              flipper = "bugs",
              waddle = "grass")
class(duck_food)

# Accessing bits of vectors
duck_food[2]
duck_food["khora"]
duck_food[1:3]

# Warm up to for loops. You can index by position, and you can define positions with variables.
j <- 4
duck_food[j]

# You can overwrite data using indexing
duck_food[3] <- "Quackers"
duck_food

# Matrices
fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9), 
                    ncol = 2,
                    nrow = 2,
                    byrow = FALSE)
fish_size

typeof(fish_size)
class(fish_size)

# Now we're going to index matrices. Remember [row, column]
fish_size[1,2]
fish_size[1,]
fish_size[,2]

# Lists. Let's us put data of different types into one data structure
octopi <- list("blue",
               c(1, 2, 3),
               c("funky", "spotted"),
               5L)
octopi

# If you want to access data in a list, you can still index. 
# You can index into vector with []
octopi[2]
# or index into elements of vectors with [[]]
octopi [[2]]

# Naming list
pizza <- list(toppings = c("cheese", "pepperoni", "sausage"),
              sauce = c("marinara", "alfredo", "pesto"),
              price = c(6.75, 8.25, 9.50))

pizza[[2]]

# $ means show me
pizza$sauce


# Data frames
vegetables <- data.frame(type = c("onion", "celery", "carrot"),
                         mass = c(130, 150, 170))
vegetables
class(vegetables)

# Indexing into data frames is the same as matrix. And you can overwrite
vegetables[1,2]
vegetables[1,1] <- "zucchini"
vegetables
