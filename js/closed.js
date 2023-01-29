var d = new Date();
var t = d.getUTCHours();
var t = t - 3;
var w = d.getDay();
if (w == 1) {
  document.getElementById("closed").style.display = "block";
}
if (t < 9) {
  document.getElementById("closed").style.display = "block";
} else if (17 < t) {
  document.getElementById("closed").style.display = "block";
}
