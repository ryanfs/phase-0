// # Longest String

// # I worked on this challenge by myself.

// # longest_string is a method that takes an array of strings as its input
// # and returns the longest string
// #
// # +list_of_words+ is an array of strings
// # longest_string(list_of_words) should return the longest string in +list_of_words+
// #
// # If +list_of_words+ is empty the method should return nil
/*
  longestWord = array[0]
  for word in array:
    if word.length > longestWord.length
      longestWord = word
  return longestWord

*/
var words = ['word1', 'word2', 'short', 'medium234', 'verylongword'];

var returnLongestWord = function(arr) {
  longestWord = arr[0]
  arr.forEach(
    function getWordLength(word) {
      if (word.length > longestWord.length)
      longestWord = word;
    })
  return longestWord;
}

console.log(returnLongestWord(words));



// Grocery List!

// # Method to create a list
// # input: string of items separated by spaces (example: "carrots apples cereal pizza")
// # steps:
//   # [fill in any steps here]
//   # set default quantity
//   # print the list to the console [can you use one of your other methods here?]
// # output: [what data type goes here, array or hash?]

/*
Input: a space delimited string
Convert each word (separated by a space) to an object with a defalt value of 1

*/

var list = 'carrots apples cereal pizza'
var listObject = {}
var newItem = 'dog'

var convertList = function() {
  var arr = list.split(' ');
  arr.forEach(
    function arrayToObject(word) {
      listObject[word] = 1;
    })
  return listObject;
}

console.log(convertList(list));

var addItem = function(str) {
  var arr = str.split(' ');
  arr.forEach(
    function arrayToObject(word) {
      if (listObject[word])
        listObject[word] = listObject[word] + 1;
      else
        listObject[word] = 1;
    })
  return listObject;
}

console.log(addItem('hello its me'));

var removeItem = function(str) {
  var arr = str.split(' ');
  arr.forEach(
    function arrayToObject(word) {
      if (listObject[word] > 1)
        listObject[word] = listObject[word] - 1;
      else if (listObject[word] == 0)
        delete listObject.word;
      else
        console.log(word + " isn't on your list");
    })
  return listObject;
}

console.log(removeItem('hello its me'));

/*
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
  - totally solidified the concept of updating the value of an object

What was the most difficult part of this challenge?
  - getting used to the forEach function
Did an array or object make more sense to use and why?
  - Object because the objects needed values

*/