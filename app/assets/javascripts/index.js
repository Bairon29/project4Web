$(document).ready(function() {
var slides = [];
var count = 1;
$.ajax({
  url: 'http://localhost:5000/popular',
  method: 'GET',
}).done(function(data){
  console.log(data);
  slides = data;
var name = $("<h2>"+slides[0].name+"</h2>");
var img = $("<img src="+slides[0].image1+" />")
$(".slide").html(" ");
$(".slide").html(name);
$(".slide").append(img);
});
clearInterval(stop)
var stop = setInterval(function(){
var name = $("<h2>"+slides[count].name+"</h2>");
var img = $("<img src="+slides[count].image1+" />")
$(".slide").html(" ");
$(".slide").html(name);
$(".slide").append(img);
count += 1;
if(count === slides.length ){
  count = 0;
}
}, 4000)

});
