// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:




// Release 1:
document.getElementById("release-0").className = "done";




// Release 2:
document.getElementById("release-1").style.display = "none";



// Release 3:
document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2."



// Release 4:
document.getElementById("release-3").style.background = "#955251";



// Release 5:
var release4 = document.getElementsByClassName("release-4");
for (var i = 0; i < release4.length; i++) {
  release4[i].style.fontSize = "2em";
}
/*
for (var index in release4) {
  release4[index].style.fontSize = 36 + "px";
}*/

// Release 6:

var tmpl = document.getElementById("hidden");
document.body.appendChild(tmpl.content.cloneNode(true));
