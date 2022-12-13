console.log("hello");

var previousScrollPosition = window.pageYOffset;
window.onscroll = function() {
  var currentScrollPosition = window.pageYOffset;
  if (previousScrollPosition > currentScrollPosition) {
    document.querySelector("header").style.top = "0";
  } else {
     document.querySelector("header").style.top = "-5rem";
  }
  previousScrollPosition = currentScrollPosition;
}
