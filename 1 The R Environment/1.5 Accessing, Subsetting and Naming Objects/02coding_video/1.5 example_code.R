#' ----------------------------------------------
# Introduction to R
# 1.5 Accessing, Subsetting and Naming Objects 
# University of Mannheim 
#' ----------------------------------------------

#' ---------------
# 1. vectors -----
#' ---------------

# construct
trust_gen <- c(2, 1, 5, 2, 5, 2, 5, 2, 4, 4)
length(trust_gen)
trust_neighbor <- 
  round(runif(n = 10, min = 1, max = 5), 
        digits = 0)
trust_city <- 
  round(runif(n = 10, min = 1, max = 5),
        digits = 0)
p_ID <- c(1, 2, 3, 4, 5, 6, 7, 8 , 9, 10)
country <- c(rep("Germany", 3), 
             rep("Spain", 2), 
             rep("France", 5)
             )

# inspect
length(country)
length(country) == length(trust_gen)
max(trust_gen)
trust_gen[10]


#' ----------------
# 2. matrices -----
#' ----------------

# construct
trust_matrix <- cbind(p_ID, 
                      country, 
                      trust_neighbor, 
                      trust_city, 
                      trust_gen
                      )
                          

# inspect
dim(trust_matrix)
nrow(trust_matrix)
ncol(trust_matrix)
colnames(trust_matrix)
trust_matrix[1,]
trust_matrix[, "country"]


#' -------------------
# 3. data frames -----
#' -------------------

# construct
trust_data <- data.frame(
  p_ID = p_ID, 
  country = country, 
  trust_neighbor = trust_neighbor, 
  trust_city = trust_city, 
  trust_gen = trust_gen
)

# inspect
class(trust_data)
nrow(trust_data)
trust_data$country
trust_data$trust_neighbor
class(trust_data$country)
class(trust_data$trust_neighbor)

# convert into factor
trust_data$country <- as.factor(trust_data$country)
class(trust_data$country)
levels(trust_data$country)
trust_data[11,] <- c(11, "Germany", 1, 1, 1)
trust_data[12,] <- c(12, "Austria", 5, 5, 5)


#' -------------
# 4. lists -----
#' -------------

# construct
collection <- list(p_ID, trust_matrix, trust_data)
collection
collection[[1]]
names(collection) <- c("p_ID", "trust_matrix", "trust_data")
collection$trust_data













