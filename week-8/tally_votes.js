// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Prince:
// This challenge took me [2.5] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
/*
START FOR LOOP
  CREATE var bob's votes
    COUNT bob's votes from votes object
    if votes.president = 'Bob'
    counter ++;

    for (var person in votes) {
      if person = 'Bob'
        counter ++;
        person = counter

    }
*/

// __________________________________________
// Initial Solution

// for (var person in votes['president']) {
//   var counter = 0
//   if (person == "Bob") {
//     console.log('we found bob');
//   }
// }
// var pCounter = 0;
// var vpCounter = 0;
// var sCounter = 0;
// var tCounter = 0;

// for (var person in votes) {
//   var pres = votes[person]['president'];
//   if (voteCount.president[pres].hasOwnProperty['president']){
//     console.log('success');
//   }

// var voteCount = {
//   president: { 'Bob': 3 },
//   vicePresident: {},
//   secretary: {},
//   treasurer: {}
// }


//COPIED FROM STACK OVER FLOW
// APPARENTLY IT IS VERY DIFFICULT TO COUNT THE NUMBER OF ITEMS IN AN ARRAY USING BAKED IN METHODS
var count = function(ary, classifier) {
    return ary.reduce(function(counter, item) {
        var p = (classifier || String)(item);
        counter[p] = counter.hasOwnProperty(p) ? counter[p] + 1 : 1;
        return counter;
    }, {})
}



var presObject = {}
var presArray = []

var vpObject = {}
var vpArray = []

var sObject = {}
var sArray = []

var tObject = {}
var tArray = []

for (var person in votes) {
  var pres = votes[person]['president'];
  if (voteCount.hasOwnProperty('president')) {
    presArray.push(pres);
    var presObject = count(presArray);
    voteCount['president'] = presObject;
  }

  var vp = votes[person]['vicePresident'];
  if (voteCount.hasOwnProperty('vicePresident')) {
    vpArray.push(vp);
    var vpObject = count(vpArray);
    voteCount['vicePresident'] = vpObject;
  }


  var secretary = votes[person]['secretary'];
  if (voteCount.hasOwnProperty('secretary')) {
    sArray.push(secretary);
    var sObject = count(sArray);
    voteCount['secretary'] = sObject;
  }

  var treasurer = votes[person]['treasurer'];
  if (voteCount.hasOwnProperty('treasurer')) {
    tArray.push(treasurer);
    var tObject = count(tArray);
    voteCount['treasurer'] = tObject;
  }
}

var pHighest = 0;
for (var person in presObject) {
  var votes = presObject[person];
  if (votes > pHighest) {pHighest = votes;}
}

for (var winner in presObject) {
  if (presObject[winner] == pHighest) {
    officers.president = winner;
  }
}

var vpHighest = 0;
for (var person in vpObject) {
  var votes = vpObject[person];
  if (votes > vpHighest) {vpHighest = votes;}
}

for (var winner in vpObject) {
  if (vpObject[winner] == vpHighest) {
    officers.vicePresident = winner;
  }
}

var sHighest = 0;
for (var person in sObject) {
  var votes = sObject[person];
  if (votes > sHighest) {sHighest = votes;}
}

for (var winner in sObject) {
  if (sObject[winner] == sHighest) {
    officers.secretary = winner;
  }
}

var tWinner = '';
var tHighest = 0;
for (var person in tObject) {
  var votes = tObject[person];
  if (votes > tHighest) {tHighest = votes;}
}

for (var winner in tObject) {
  if (tObject[winner] == tHighest) {
    officers.treasurer = winner;
  }
}

// console.log(highest);
// console.log(presObject);

//console.log(presObject);

// console.log(presObject);
// console.log(voteCount);
// console.log(presArray);

//   // if (vote['president'].hasOwnProperty(votes[person]['president'])) {
//   voteCount['president'][vote[person]
// }


  // var viceP = votes[person]['vicePresident']
  // if (viceP == 'Bob') {
  //   vpCounter ++;
  // }
  // var secretary = votes[person]['secretary']
  // if (secretary == 'Bob') {
  //   sCounter ++;
  // }
  // var treasurer = votes[person]['treasurer']
  // if (treasurer == 'Bob') {
  //   tCounter ++;
  // }
  // voteCount.president['Bob'] = pCounter;
  // voteCount.vicePresident['Bob'] = vpCounter;
  // voteCount.secretary['Bob'] = sCounter;
  // voteCount.treasurer['Bob'] = tCounter;
//}

// var testCount = 0;
// for (var person in votes) {
//   var pres = votes[person]['president']
//   if (pres == pres) {
//     console.log(pres);
//     testCount++;
//   }
//   console.log(testCount);
// }


// __________________________________________
// Refactored Solution






// __________________________________________
// Reflection



//What did you learn about iterating over nested objects in JavaScript?
  // this was a brutal assignment for us. We had a lot of trouble manipulating the values of the objects we were dealing with.

//Were you able to find useful methods to help you with this?
  //counting the highest number that appears in an array was the most useful.

//What concepts were solidified in the process of working through this challenge?
  // general javascript syntax


// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)