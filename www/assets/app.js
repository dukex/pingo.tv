var COLORS = [
  {bg: "#FFC107", text: "black"},
  {bg: "#2196F3", text: "white"},
  {bg: "#E91E63", text: "white"},
  {bg: "#F44336", text: "white"},
  {bg: "#4CAF50", text: "white"},
  {bg: "#FF5722", text: "white"}
];

window.addEventListener('polymer-ready', function(e) {
  var toolbar = document.querySelector('core-toolbar');
  var color = COLORS[Math.floor(Math.random()*COLORS.length)];
  toolbar.style.backgroundColor = color.bg;
  toolbar.style.color = color.text;
});
