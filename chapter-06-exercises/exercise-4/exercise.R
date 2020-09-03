# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(s1, s2) {
  smaller_len <- min(nchar(s1), nchar(s2))
  bigger_len <- max(nchar(s1), nchar(s2))
  (bigger_len - smaller_len) >= smaller_len
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
print("Should be all true")
print(is_twice_as_long("hi","hello"))
print(is_twice_as_long("hello", "hi"))
print(is_twice_as_long("hi","hey!"))
print(is_twice_as_long("hey!","hi"))
print("Should be all false")
print(is_twice_as_long("hi", "hi!"))
print(is_twice_as_long("hi!","hi"))


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(s1, s2) {
  difference <- nchar(s1) - nchar(s2)
  if (difference == 0) {
    return("Your strings are the same length")
  } else if (difference > 0) {
    return(paste("Your first string is longer by", difference, "characters"))
  }
  return(paste("Your second string is longer by ", abs(difference), "characters"))
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
print(describe_difference("first is big", "small"))
print(describe_difference("small", "second"))
print(describe_difference("equal", "equal"))