 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Make as much money trading tech stocks in 30 days
// Goals: Buy stocks, hold onto them, and sell them at a higher price
// Characters: Player 1
// Objects: Player Portfolio, Stock Market
// Functions: trade stock, (upon trading a stock, one day passes), change price of stocks

// Pseudocode
// Declare a Player Porfolio object that will have properties such as portfolio (stocks and their quantity)
// Declare a Stock Market object that will have properties such as stocks and their prices
// Player can make a trade to purchase or sell a certain number of stocks
// After a trade happens, one day passes and the price of the stocks change
// After 30 days, game over, and we see how well you did




// HTML Code
<div id="stocks">
  <h3>Stock Prices Today</h3>
  <p>Apple: $20</p>
  <p>Google: $15</p>
  <p>Facebook: $12</p>
  <p>Amazon: $22</p>
  <p>Tesla: $18</p>
  <p>GE: $5</p>
</div>
<div id="bank">
  <h3>Bank Account</h3>
</div>
<div id="portfolio">
  <h3>My Portfolio</h3>
</div>


// Run Code Here
// https://jsfiddle.net/ryanfs/juu5kb0x/


// Initial JAVASCRIPT Code
var stockMarket = {
        apple: {
        name: "Apple",
        price: 20,
    },
    google: {
        name: "Google",
        price: 15,
    },
    facebook: {
        name: "Facebook",
        price: 12,
    },
    amazon: {
        name: "Amazon",
        price: 22,
    },
    tesla: {
        name: "Tesla",
        price: 18,
    },
    ge: {
        name: "GE",
        price: 5,
    },

}

var bankAccount = {
cash: 100
}

var playerPortfolio = {
ge: {
        name: "GE",
        quantity: 5,
    }

}



function start(){
var stocks = $('#stocks');
for (var stock in stockMarket){
    stocks.append(stockMarket[stock].name + ': ' + '$' + stockMarket[stock].price + '<br /><br />');
}
}

var i = 1;
function days(){
    i++;
    console.log(i);
    return i;
}


function updateMarket(days){
var today = days;
var stocks = $('#stocks');
stocks.append('<h3>Stock Prices Day ' + today + '</h3>');
for (var stock in stockMarket){
  console.log(stock);
    var marketSwing = Math.floor(Math.random()*99) - 50;
    stockMarket[stock].price += marketSwing;
  console.log(marketSwing);
  //stocks.replaceWith(stockMarket[stock].name + ': ' + '$' + stockMarket[stock].price + '<br /><br />');
  //stocks.append(stockMarket[stock].name + ': ' + '$' + stockMarket[stock].price + '<br /><br />');
}
}


var bank = $('#bank');
bank.append('You are starting off with $' + bankAccount.cash +' left in cash.' + '<br /><br />');

var portfolio = $('#portfolio');
for (var stock in playerPortfolio){
portfolio.append(playerPortfolio[stock].quantity + ' shares of ' + playerPortfolio[stock].name);
}

function makeTrade() {
    choice = prompt('Buy or Sell?')
    if(choice === 'buy' || 'Buy'){
        stock = prompt('Which stock would you like to buy?');
        quantity = prompt('How many stocks?');
    stockObject = {name: stock, quantity: quantity};
    price = (quantity * stockMarket[stock].price);
    if (price < bankAccount.cash){
        return stockObject;
    }
    else {
    alert("You don't have the money to make that trade!");
    }
}
    //else if (choice === 'sell' || 'Sell')
}

function addToPortfolio(stock) {
    playerPortfolio[stock.name] = stockObject
    var portfolio = $('#portfolio');
        portfolio.append('<br /><br />' + stockObject.quantity + ' shares of ' + stockObject.name);
}



function updateBank(stock){
//start();
price = stock.quantity * stockMarket[stock.name].price
moneyBeforeTrade = bankAccount.cash
moneyAfterTrade = moneyBeforeTrade - price
bankAccount.cash = moneyAfterTrade
var bank = $('#bank');
bank.append('Now you have $' + bankAccount.cash +' left in cash.' + '<br /><br />');
}


while ( bankAccount.cash > 0){
//start();
stock = makeTrade();
bank = updateBank(stock);
portfolio = addToPortfolio(stock);
day = days();
updateMarket(day);
}
alert('You lose, you are out of money!');




// Refactored Code



// Reflection
//What was the most difficult part of this challenge?
 // This has been the biggest challenge so far. It involved the most creativity, the most logic, and has been the most fun to make.

//What did you learn about creating objects and functions that interact with one another?
 //  I learned how to add properties to objects and create small functions that just do one thing.

//Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
  // Googling and working on stack overflow I put in a few new methods that I hadn't heard of. I also learned how to manipulate the DOM with javascript which has been a really fun experience.

//How can you access and manipulate properties of objects?
  // You can call the object by its name and add properties to it by setting them equal to the value, you can update the values of those properies as well.
//