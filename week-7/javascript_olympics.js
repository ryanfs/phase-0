 // JavaScript Olympics

// I paired with Matthew Baquerizo on this challenge.

// This challenge took me [1.5] hours.


// Warm Up




// Bulk Up
var athletes = [
  {
    name: 'Sarah Hughes',
    sport: 'Ice skating'
  },
  {
    name: 'Michael Phelps',
    sport: 'swimming',
  }
];


function addWin(athletes){
  for (athlete in athletes){
    athletes[athlete].win = athletes[athlete].name + " won " + athletes[athlete].sport;
  }
  return athletes;
}


console.log(addWin(athletes))



// // Jumble your words

// function reverse(string){
//   string = string.split("").reverse().join("");
//   return string;
// }
// //console.log(reverse('testword'))

// // 2,4,6,8

function evens(arr) {
  var even = [];
  for (num in arr){
    var item = arr[num];
    if (item % 2 === 0){
      even.push(item);
    }
  }
  return even;
  // traverse array and if even? return to new array else ignore
}

//console.log(evens([1,2,3,4,5,6,10,11]))

// // "We built this city"


function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
//What JavaScript knowledge did you solidify in this challenge?
  // Solidified simple things like traversing through through an array, setting up data structures, and using basic built in methods.

//What are constructor functions?
  // Very similar to a class, constructor functions use the 'this' keyword to set the properties in a function that will be called later by referecning the constructor function.

//How are constructors different from Ruby classes (in your research)?
  // They are different than classes because classes have a particular behavior set by multiple methods, while a constructor function is one function.