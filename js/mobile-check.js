document.getElementById("desktop").style.display = "inline-block";
document.getElementById("mobile").style.display = "none";

if (/Android|webOS|iPhone|iPad|iPod|Opera Mini/i.test(navigator.userAgent)) {
  document.getElementById("desktop").style.display = "none";
  document.getElementById("mobile").style.display = "inline-block";
}
