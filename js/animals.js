var darken = document.cookie;
if (darken == "dark-mode") {
  var element = document.getElementById("body");
  element.classList.toggle("dark-mode");
  var button1 = document.getElementById("button-birds");
  button1.classList.toggle("animal-dark");
  var button2 = document.getElementById("button-mammals");
  button2.classList.toggle("animal-dark");
  var button3 = document.getElementById("button-reptiles");
  button3.classList.toggle("animal-dark");
  var footer = document.getElementById("footer");
  footer.classList.toggle("footer-dark");
  document.getElementById("dark-toggle").textContent = "Light Mode";
} else {
}
if (/iPhone|iPad|iPod|Opera Mini/i.test(navigator.userAgent)) {
} else {
  var prevScrollpos = window.pageYOffset;
  window.onscroll = function() {
    var currentScrollPos = window.pageYOffset;
    if (prevScrollpos > currentScrollPos) {
      document.getElementById("fixedtop").style.top = "0";
    } else {
      document.getElementById("fixedtop").style.top = "-50em";
    }
    prevScrollpos = currentScrollPos;
  };
}

jQuery(document).ready(function() {
  jQuery(".toggle-nav").click(function(e) {
    jQuery(this).toggleClass("active");
    jQuery(".menu ul").toggleClass("active");

    e.preventDefault();
  });
});
