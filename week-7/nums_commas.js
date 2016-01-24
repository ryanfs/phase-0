// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Andrew Kim for 1.5 hours.

// Pseudocode

// Input: a bunch of integers
// Convert the integers to a string
// reverse the string
// set up a loop and use the slice method
// slice arguments are the starting point and the end point
// count every three indexes
// start at (0, 3)
// insert comma
// i + 3
// increase both numbers in the argument by 3 each time
// reverse it again
// return string

//output: those same integers with commas


// Initial Solution

function comma_insert(number){

    number = number.toString().split("").reverse();


    var n = 3;
    var i = 0;

    while( n < number.length ) {
    number.splice(n, 0, ',' );
    n += 4;
    i ++;
   }
  return number.reverse().join("");
}



// Refactored Solution
// I couldn't find a javascript method similar to the .each_slice method in ruby to eliminate the need for those counter variables. Not sure how to refactor this further to make it less verbose.


// function comma_insert(number){
//     number = number.toString().split("").reverse();
//     var n = 3;
//     var i = 0;

//     while( n < number.length ) {
//     number.splice(n, 0, ',' );
//     n += 4;
//     i ++;
//    }
//   return number.reverse().join("");
// }


// Your Own Tests (OPTIONAL)

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (comma_insert(1000) === '1,000'),
  "WRONG",
  "1. "
)

assert(
  (comma_insert(999999999) === '999,999,999'),
  "WRONG",
  "2. "
)

assert(
  (comma_insert(100) === '100'),
  "WRONG",
  "3. "
)

assert(
  (comma_insert(0) === '0'),
  "WRONG",
  "4. "
)


// Reflection
//What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
 // We approached it very similarly to the challenge in ruby because the logic is more or less the same. There aren't as many convenient methods in javascript - at least ones that we could find after researching for a while.

//What did you learn about iterating over arrays in JavaScript?
 // Strings don't behave the same as arrays, you have to do .splice and .joins a lot.

//What was different about solving this problem in JavaScript?
  // The standard semi colon pain was a problem, but also the fact that the code has to be more verbose because there aren't as many built in methods.

//What built-in methods did you find to incorporate in your refactored solution?
 // During our initial research we found the .splice method which worked well for us, it's a combination of the slice and insert method.