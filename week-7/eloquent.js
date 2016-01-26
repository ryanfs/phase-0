// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

// Introduction
// I learned how computers save digits to the metal using binary bits.

// I also learned what a NaN value is - it's when a program is expecting a numerical response but gets something else.

// Chatper 2
// A fragment of code that produces a value is called an expression. An expression between parentheses is also an expression, as is a binary operator applied to two expressions or a unary operator applied to one.

// The purpose of a semi colon on JavaScript is to signify an expression. They are not always required, but for our purposes we're going to always use them.

// If a variable has no value it will return 'undefined.'

// Console.log prints the value that's returned to the console, just like puts or print in Ruby.

// var favFood = prompt('What is your favorite food?')
// console.log('Hey ' + favFood + 'is my favorite too!')

// var myVariable = 2
// console.log(myVariable + 4)

// While loops iterate while a certain condition is true

// For loops iterate through a certain number of iterations

var result = '#';
var counter = 0;
while (counter < 7) {
  console.log(result);
  result = result + '#';
  counter = counter + 1;
}


// Chapter 3

//What are the differences between local and global variables in JavaScript?
 //- variables declared within a function are local and variables outside of a function are global.

//When should you use functions?
 //When a block of logic needs to return a value, and it's repeatable, you should organize it into a function.

// What is a function declaration?
 //- A function declaration is the statement that defines the variable and points it at the given function.

//Complete the minimum exercise in the eloquent.js file.
function min(val1, val2) {
  return min(val1, val2);
}

//console.log(Math.min(1, 2));


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var result = '#';
var counter = 0;
while (counter < 7) {
  console.log(result);
  result = result + '#';
  counter = counter + 1;
}




// Data Structures: Objects and Arrays

// What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
 // Dot notation is better practice because it's faster to write and clearer to read.
 // However backet notation allows for the use of characters that can't be used with dot notation (which may happen if the property names are set dynamically)


// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: 'Ryan F. Salerno',
  age: 27,
  favFood: 'pizza',
  quirk: 'I cannot really smell...'
}

// What is a JavaScript object with a name and value property similar to in Ruby?
 // Similar to ruby hashes.


 // Reflection

 //What are the biggest similarities and differences between JavaScript and Ruby?
    // Writing logical verbose code can make them very similar. There are similar methods, data structures, and formatting.
    // The big differences include the fact that in javascript, spacing doesn't matter, but spacing is king in ruby. Since spacing doesn't matter, javascript has closures. Also there are quirky syntax things with javascript, and ruby has syntactic sugar.

// Was some of your Ruby knowledge solidified by learning another language? If so, which concepts?
    // Absolutely, I'd never have picked up JS this quickly if it wasn't for the ruby foundation we've been doing. I've been curious to pick up javascript for a long time, and it never quite clicked until I 'got' programming.

//How do you feel about diving into JavaScript after reading these chapters?
    // Like this is the tip of the iceberg... We aren't taking advantage of the fact that JavaScript is asyncronous, or playing with the browser much at all just yet.