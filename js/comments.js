if (/Android|webOS|iPhone|iPad|iPod|Opera Mini/i.test(navigator.userAgent)) {
} else {
  if (localStorage.pagecount) {
    localStorage.pagecount = Number(localStorage.pagecount) + 1;
  } else {
    localStorage.pagecount = 1;
    var language = window.navigator.userLanguage || window.navigator.language;
    if (language != "pt-BR") {
      document.location = "Ingles/index-english.html";
    }
  }
}

var darken = document.cookie;
if (darken == "dark-mode") {
  var element = document.getElementById("body");
  element.classList.toggle("dark-mode");
  var footer = document.getElementById("footer");
  footer.classList.toggle("footer-dark");
  document.getElementById("dark-toggle").textContent = "Modo Claro";
  var cols = document.getElementsByClassName("text-div");
  var i = 0;
  for (i = 0; i < cols.length; i++) {
    cols[i].classList.toggle("text-div-dark");
  }
  var cols = document.getElementsByClassName("text-box");
  var i = 0;
  for (i = 0; i < cols.length; i++) {
    cols[i].classList.toggle("text-box-dark");
  }
  var cols = document.getElementsByClassName("button");
  var i = 0;
  for (i = 0; i < cols.length; i++) {
    cols[i].classList.toggle("button-dark");
  }
  document.getElementById("text-area").classList.toggle("text-area-dark");
  document.getElementById("credentials").classList.toggle("credentials-dark");
} else {
}

setTimeout(() => {
  document.getElementById("text").style.left = 0;
}, 0);

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
