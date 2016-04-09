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
        console.log("Error: " + err);
    }
    if (item != "" && item != undefined) {this.list[item] = quantity};
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



// DRIVER CODE:
var someItems = new GroceryList("apples bananas pistachios chocolate");
someItems.printList();
someItems.addItem("yogurt");
someItems.updateItem("cheese", 5);
someItems.printList();
someItems.updateItem("yogurt", 3);
someItems.printList();
