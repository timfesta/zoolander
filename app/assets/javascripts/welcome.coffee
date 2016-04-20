# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$("#image").fadeOut(function() { 
  $(this).load(function() { $(this).fadeIn(1000); }); 
  $(this).attr("src", "./assets/ny.png"); 
});