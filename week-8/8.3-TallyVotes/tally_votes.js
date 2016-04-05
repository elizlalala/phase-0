// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: By myself
// This challenge took me [#] hours.

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


// __________________________________________
// Initial Solution

// if voteCount.president[name] == undefined
//   var voteCount.president[name] = voteCount.president[name] + 1

// for (var voter in votes) {
//   if (votes.hasOwnProperty(voter)) {
//     var office = votes[voter]; 
//     for (var position in office) {
//       if (office.hasOwnProperty(position)) { 
//         var vote = office[position];
//         if (voteCount[position][vote] !== undefined) {
//           voteCount[position][vote] = voteCount[position][vote] + 1
//         }
//         if (voteCount[position][vote] == undefined) {
//           voteCount[position][vote] = 1
//         }
//       } 
//     }
//   }
// }

// for (var title in voteCount) {
//     var office = voteCount[title];
//     var max_name = "";
//     var max_votes = 0;
//     for (var name in office) {
//       if (office[name] > max_votes) {
//         max_name = name; 
//         max_votes = office[name];
//         console.log(max_name + " is in the lead for " + title);
//       }
//     }
//     officers[title] = max_name;
//   }
// // }




// __________________________________________
// Refactored Solution

for (var voter in votes) {
  if (votes.hasOwnProperty(voter)) {
    var office = votes[voter]; 
    for (var position in office) {
      if (office.hasOwnProperty(position)) { 
        var vote = office[position];
        if (voteCount[position][vote] !== undefined) {
          voteCount[position][vote] = voteCount[position][vote] + 1
        }
        else  {
          voteCount[position][vote] = 1
        }
      } 
    }
  }
}

for (var title in voteCount) {
    var office = voteCount[title];
    var max_name = "";
    var max_votes = 0;
    for (var name in office) {
      if (office[name] > max_votes) {
        max_name = name; 
        max_votes = office[name];
      }
    }
    officers[title] = max_name;
  }




// __________________________________________
// Reflection

// Q: What did you learn about iterating over nested objects in JavaScript?
// A: This was my first encounter with the var...in syntax, so I definitely got comfortable
// with that.  However, I need to read more about the hasOwnProperty method.  I think I understand
// what it says it means, and I know that I need it for my code to work, but I don't really
// understand why my code needs it.  I felt as though I should maybe be able to leave that 
// part out.  So clearing that up is definitely on my to do list.

// Q: Were you able to find useful methods to help you with this?
// A: The .hasOwnProperty method was essential, but I'm not sure I fully understand it. :/

// Q: What concepts were solidified in the process of working through this challenge?
// A: Accessing object values using bracket notation vs dot notation was very solidified.  
// I think I also feel very comfortable looping in JS now. 




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