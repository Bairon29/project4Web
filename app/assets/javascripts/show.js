$(document).ready(function() {

$.ajax({
  url: 'https://modellingproject.herokuapp.com/data',
  method: 'GET',
}).done(function(data){
  console.log(data)
    $(".ishere").html(" ");
  for(var i = data.length - 1;  i >= 0; i--){
  data[i].name === "" ? $(".ishere").append("<h1>Anonymous</h1>") : $(".ishere").append("<h1>"+data[i].name+"</h1>")
  $(".ishere").append("<p>"+data[i].review+"</p>");
}
});
clearInterval(stop)
var stop = setInterval(function(){
$.ajax({
  url: 'https://modellingproject.herokuapp.com/data',
  method: 'GET',
}).done(function(data){
  console.log(data)
  $(".ishere").html(" ");
  for(var i = data.length - 1;  i >= 0; i--){
  data[i].name === "" ? $(".ishere").append("<h1>Anonymous</h1>") : $(".ishere").append("<h1>"+data[i].name+"</h1>")
  $(".ishere").append("<p>"+data[i].review+"</p>");
}
});

}, 30000)

});
