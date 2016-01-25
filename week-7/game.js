 // Design Basic Game Solo Challenge

// This is a solo challenge


//// NOTES FOR REVIEWER

// Run Code Here
// https://jsfiddle.net/ryanfs/juu5kb0x/


/// I had a great time coming up with this game and working through the logic. It was inspired by the TI 83 game Drug Wars. I decided to make it a little more SFW and switch it to Tech Stocks though... :)

 /// Right now you can purchase stocks, and when you do, it pulls money from your bank account to make the trade and will update your portfolio.

 // After making a trade, one day passes, and when that happens, the market changes (right now the stock changes by adding a random number from -50 to 50 to its existing price).

// The game ends right now when you run out of money, or when you attempt a trade that you don't have the money to pay for.


// TO DO

 // Currently cannot 'Sell' stocks to cash out and end the game in a 'win'. Need to make the 'sell' logic. It will be simple because it's the opposite of 'buy' - you update the properties in your portfolio and add money back into the bank account.

 // There is no logic preventing a negative stock price. If you buy a stock worth negative $5, the balance in your bank account increases because you are subtracting a negative number.

// I'm using the 'prompt' method, which isn't great because you can't scroll while the alert box is on screen. I'd like to switch it to form inputs.

// Currently you have to type the exact name of the stock, I'd also like to make it so you click on boxes (this will prevent people from submitting typos.)



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

// I'd like to finish the game before refactoring. Unfortunately I ran out of time this week (I spent hours on this challenge, it was fun), but I will continue working on this to finish it up in the following week.

