$(document).ready(function() {
var slides = [];
var count = 0;
$.ajax({
  url: 'https://modellingproject.herokuapp.com/popular',
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
$(".slide1").html(" ");
$(".slide1").html(name);
$(".slide1").append(img);
count += 1;
if(count === slides.length ){
  count = 0;
}
name = $("<h2>"+slides[count].name+"</h2>");
img = $("<img src="+slides[count].image1+" />")
$(".slide").html(" ");
$(".slide").html(name);
$(".slide").append(img);
}, 4000)




$("#weapon").click(function(e){
  // e.preventDefault();
  $("#weapon-container").css('opacity', '1');
  $("#weapon-container").css('position', 'relative');

$("#assesories-container").css('opacity', '0');
$("#assesories-container").css('position', 'absolute');

});

$("#assesories").click(function(e){

$("#assesories-container").css('opacity', '1');
$("#assesories-container").css('position', 'relative');

$("#weapon-container").css('opacity', '0');
  $("#weapon-container").css('position', 'absolute');

});



});
