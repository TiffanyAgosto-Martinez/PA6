# graded6.R
# Tiffany Agosto-Martinez
# 10/10/2026
# R script to test a custom function and for loop

# sqAddFive function squares input vector and adds 5 to each element           
sqAddFive <- function(x) {
  # Use a vectorized operation & assign try result to temp variable
  temp_variable <- try((x^2 + 5), silent=T) # silent to prevent error message

  # check if an exception is thrown
  if (class(temp_variable) == "try-error") {
    return (rep(NA, length(x)))
  } else {
    return(temp_variable)
  }
}
# Test 1: test the function
v1 <- 1:5
test_1 <- sapply(v1, sqAddFive)

cat("Test Output (Numeric Sequence):\n")
print(test_1)

# Test 2: Testing character exception string layout handling 
v2 <- c(1, 2, "three", 4, 5)
test_2 <- sapply(v2, sqAddFive)

cat("Test 2 Output (Mixed Vector with Error):\n")
print(test_2)