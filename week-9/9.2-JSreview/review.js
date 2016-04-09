// 9.2.1 GROCERY LIST

// PSEUDOCODE:
// Input: Item list (string delimited by spaces)
// Output: 
// 1. Hash containing items and desired quantities
// 2. Methods to interact with the list
// Steps:
// Create a function to move string to an object
// Create functions that are elements within the object to perform tasks: 
// - Add item to the list.
// - Update the quantity of an item to the list. (Can this be combined with the above?)
// - Remove item from the list entirely.
// - Print the list.

function GroceryList(list) {
  this.stringList = list;
  this.arrayList = list.split(" ");
  this.list = {};
  for (var i in this.arrayList) {
  	this.list[this.arrayList[i]] = 0;
  }

  // Add new items to the list.
  // Does not allow empty or undefined items to be executed upon.
  // Defaults quantity to 0.
  this.addItem = function(item, quantity) {
  	quantity = typeof quantity !== 'undefined' ? quantity : 0;
  	try { 
        if(item == "" || item == undefined) throw "Please include an item to be added or updated.";
    }
    catch(err) {
        return console.log("Error: " + err);
    }
    this.list[item] = quantity;
  }

  // Remove items from the list.
  this.removeItem = function(item) {
  	delete this.list[item];
  }

  // Update quantities of existing items in the list.
  // The code and error to add and update is exactly the same so I'm just adding this for usability.
  this.updateItem = this.addItem;

  // Pretty print the current grocery list.
  this.printList = function() {
  	console.log("GROCERY LIST");
  	for (var i in this.list) {
		console.log(i + ": " + this.list[i]);
	}
	console.log("");
  }
}

// GROCERY LIST DRIVER CODE:
// var someItems = new GroceryList("apples bananas pistachios chocolate");
// someItems.printList();
// someItems.addItem("yogurt");
// someItems.updateItem("cheese", 5);
// someItems.printList();
// someItems.updateItem("yogurt", 3);
// someItems.printList();

// 9.2.1 Reflections
// Q: What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// A: I feel pretty solid on constructor functions vs basic functions after this challing.  I also learned about throwing errors.

// Q: What was the most difficult part of this challenge?
// A: Deciding what form to give this program.  I went with the constructor function because it feels more natural than
// creating an object that would be fed as an argument to freestanding methods if that makes sense?  But when I initially
// decided on a constructor function, I was trying to use prototype functions after that.  I still can't quite get them to work
// even though I feel like I understand prototype functions.  I eventually moved away from that direction and found this to be
// fairly straightforward, but it still kind of bugs me that I can't get the prototypes working.

// Q: Did an array or object make more sense to use and why?
// A: I felt much more efficient using an object here because order was irrelevant to this list, and the user would most likely
// interact with the list by calling key data - i.e. the grocery item.



// 9.2.2 TRANSLATE FROM RUBY TO JS

// For this challenge, I'm choosing to translate the credit card checking algo from Module 6.7
// Pseudocode

// Input: credit card number as an integer
// Output: boolean true or false
// Steps: 
// 1. Raise argument error if not 16 digits long
// 2. Convert integer to array (might be able to do this first)
// 3. Use each_with_index (odd?) to alter the original target odds 
//    odd value and double each
// 4. Sum all untouched and broken apart doubled digits
//    a. Break apart any values greater than 9
//    b. Use inject method to sum all values in array
// 5. Return result (true/false) of the sum % 10 == 0

function CreditCard(num) {

  // .toString(10) means that we're using a base of 10.  This is actually the default.
  // .map(Number) changes the loaded elements back to numbers in the array
  this.num = num;
  this.checkCard = function() {
    var numArray = this.num.toString(10).split("").map(Number);
    try {
      if (numArray.length < 16) throw "Your card number is missing digits. It must contain 16 digits."
      if (numArray.length > 16) throw "Your card number has too many digits. It must contain 16 digits."
    }
    catch(err) {
      return console.log(err);
    }

    var nextArray = [];

    for (var i=0; i < numArray.length; i++) {
      if (i % 2 == 0) {numArray[i] = numArray[i]*2};
      if (numArray[i]*2 > 9) {
        var miniArray = (numArray[i]*2).toString(10).split("").map(Number);
        nextArray.push(miniArray[0]);
        nextArray.push(miniArray[1]);
      }
      else{
        nextArray.push(numArray[i]);
      }
    }

    var sumArray = 0
    for (var i = 0; i < nextArray.length; i++) {
      sumArray += nextArray[i];
    }

    return sumArray % 10 == 0;
  }
}


// TRANSLATE FROM RUBY TO JS DRIVER CODE
// var myCard = new CreditCard(1199111111111112);
// console.log(myCard.checkCard());

// 9.2.2 Reflections
// Q: What concepts did you solidify in working on this challenge? 
// A: Again, I enjoyed interacting with the constructor function of an object in this challenge, despite the bulk of the 
// work being withing the contained .checkCard function.  I also solidified flow control syntax I think.

// Q: What was the most difficult part of this challenge?
// A: Making sure that I was declaring variables at the proper point in hierarchy.  I accidentally declared them within loops
// a couple times, when I needed to be declaring them outside of the loops.  That tripped me up for a bit because the code would 
// work but I would get strange items returned after all was said and done.

// Q: Did you solve the problem in a new way this time?
// A: Kind of.  I refactored some steps if you set the two side by side, but the overall path was the same.

// Q: Was your pseudocode different from the Ruby version? What was the same and what was different?
// A: It was exactly the same.  I copied it directly anticipating that I would need to alter it, but then I realized that I'm
// finishing the exact same steps in plain English.  

