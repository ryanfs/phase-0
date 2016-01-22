// Make three functions that can take an array of numbers (the length of the array is unkown) and do math with those funtions. One function takes the sum of the numbers, one takes the mean, one takes the median.

// SUM function:
// input: an array of integers
// logic:
//take the sum of all numbers in the array
// for each int in the array, add it to the previous sum
// output: integer that is the sum of those numbers

// MEAN function:
// input: an array of integers
// logic:
//add up all the numbers (see sum function above)
// count the numbers in the array
// mean is equal to the sum divided by the number of numbers
// return mean
// output: an int that is the mean of the input



// MEDIAN function

//background:
// with an odd number of values, median is the middle number
// with an evan number of values, median is the mean of the two values in the middle

// input: an array of integers
// logic:
// count the number of values in the array
// IF the count is odd,
// get the center index
// center index is count.length divided by two
// round down to get the center index (use the floor method)
// return the integer in the array index of that center we just calculated

// ELSE if the count is even,
// get the two numbers around the center index
// count.length divided by two and round up (use ceil)
// also count.length divided by two and round down (use floor)
// return the values of the two numbers in those positions
// take the sum of those two values (use the sum function from above)
// return the mean
// output: an integer (the mean)
