 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: You are a fisherman out to catch dinner.
// Overall mission: Catch 5 fish to cook a full meal.
// Goals: Catch 5 fish
// Characters: Fisherman (you)
// Objects: fisherman, fishBait
// Functions: baitHook, goFish

// Pseudocode
// Create Fisherman.
// Input: none
// Properties: name, targetFish, bait, bounty
//
// Create Fish Bait Library.
// Input: none
// Properties: A bunch of fish and the appropriate bait for that fish
//
// Create function to bait the hook.
// Input: a fish type
// Output: New values in Fisherman object indicating the target fish and the bait. Printed message.
// Steps: 
// Change the fisherman.targetFish value to the input value
// Change the fisherman.bait value to the bait associated with the new fish in the fishBait library
// Print a message that they are locked and loaded to go fish!
//
// Create function to go fishing.
// Input: nothing
// Output: Increment bounty + 1.  If they have already caught 5 fish, they win and see a printed message to go eat dinner.
// Steps:
// Check fisherman.bounty value
// If fisherman.bounty is greater than or equal to 5, print the message that they win!
// If fisherman.bounty is less than 5, add 1 to bounty, and tell them how many more fish they need to catch. 

// Initial Code

// var fisherman = {
// 	name: "Joe Smith",
// 	targetFish: "trout",
// 	bait: "fly",
// 	bounty: 0,
// };

// var fishBait = {
// 	"tuna": "cut squid",
// 	"trout": "fly",
// 	"catfish": "crawfish",
// 	"red snapper": 	"cigar minnow"


// };

// var baitHook = function(fish) {
// 	fisherman.targetFish = fish;
// 	fisherman.bait = fishBait[fish];
// 	console.log("Woohoo!!  You're ready to cast your rod for some " + fish + "!")
// }

// var goFish = function() {
// 	if (fisherman.bounty >= 5)
// 		console.log("You win!! Dinner time :)");
//  	else
//  		fisherman.bounty += 1
//  		console.log("Another fish in the bucket.  Only " + (5 - fisherman.bounty) + " to go until you can feed your guests!");
// }

// console.log(fisherman);
// baitHook("tuna");
// console.log(fisherman);
// goFish();
// console.log(fisherman);



// Refactored Code

function fisherman (name) {
	this.name = name;
	this.targetFish = "";
	this.bait = "";
	this.bounty = 0;
}

var fishBait = {
	tuna: "cut squid",
	trout: "fly",
	catfish: "crawfish",
	snapper: "cigar minnow",
}

var baitHook = function(fisherman, fish) {
	fisherman.targetFish = fish;
	fisherman.bait = fishBait[fish];
	console.log("Woohoo!! " + fisherman.name + " is ready to cast your rod for some " + fish + "!")
}

var goFish = function(fisherman) {
	fisherman.bounty += 1;
	if (fisherman.bounty >= 5)
		console.log("You win!! Dinner time :)");
 	else
 		console.log("Another fish in the bucket.  Only " + (5 - fisherman.bounty) + " to go until dinner time!!");
}

//Add the ability to manipulate fishBait, and fish for new game!
var newFish = function(fisherman, fish, bait) {
	fishBait[fish] = bait
	console.log(fisherman.name + " can now enjoy some " + fish + " for dinner.")
}

var elizabeth = new fisherman("Elizabeth");
console.log(elizabeth);
baitHook(elizabeth, "tuna");
console.log(elizabeth);
goFish(elizabeth);
console.log(elizabeth);
newFish(elizabeth, 'cobia', "chum");
console.log(fishBait);
goFish(elizabeth);
goFish(elizabeth);
goFish(elizabeth);
goFish(elizabeth);
goFish(elizabeth);
goFish(elizabeth);




// Reflection
// Q: What was the most difficult part of this challenge?
// A: Coming up with a somewhat meaningful story line that was simple enough to tackle within a reasonable amount of time
// and with my skillset.  I feel like I may have OVERLY simplified this.  But I felt a little time-constrained to re-route
// later. Using the constructor method in my refactoring also was a little bit tricky.
// 
// Q: What did you learn about creating objects and functions that interact with one another?
// A: I didn't take away too much that was eye-opening on this front.  Perhaps my game was too simplistic.  I did try
// to use prototype functions in my refactoring and couldn't get those to work.  Will have to explore more!
//
// Q: Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// A: My refactoring was mostly about moving to a constructor function for the fisherman object.  I definitely brushed up on some 
// syntax there.  
// 
// Q: How can you access and manipulate properties of objects?
// A: I noticed that in accessing/manipulating values within the fishBait object that I had to use the object[property] notation as 
// opposed to object.property.  This was not the case in fisherman, even before I was using the constructor method.  That
// still feels a little odd.
//
//
//
//
//
//