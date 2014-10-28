// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require best_in_place
//= require jquery_ujs
//= require jquery.flexslider
//= require_tree .

$(document).ready(function(){

  $(".best_in_place").best_in_place();

  $('.flexslider').flexslider({
    animation: "slide",
    slideshow: false,
    touch: true
  });

  $(".shim").on("click", function(){
    $(this).hide();
    $("#sign-in-form").hide().css("top", "50%");
    $("#sign-up-form").hide().css("top", "50%");
    $("body").css("overflow", "visible");
  });

  $("#sign-up-btn").click(function(event){
    event.preventDefault();
    $(".shim").show();
    $("#sign-up-form").show().animate({ top: "90px" }, 200);
    $("body").css("overflow", "hidden");
    $("body").animate({ scrollTop: 0 }, 200);
  });

  $("#sign-in-btn").click(function(event){
    event.preventDefault();
    $(".shim").show();
    $("#sign-in-form").show().animate({ top: "90px" }, 200);
    $("body").css("overflow", "hidden");
    $("body").animate({ scrollTop: 0 }, 200);
  });

  $(".edit-btn").click(function(){
    $(".edit-text p").fadeIn();
  });

  // $(".category-name").hover(function(){
  //   $(this).animate({ bottom: "80px" }, 200);
  //   }, function(){
  //   $(this).animate({ bottom: "60px"}, 200);
  // });

  // $(".cat-image").hover(function(){
  //   $(this).stop().animate({"opacity": 1});
  //   $(".category-name").show();
  //   },function() {
  //   $(this).stop().animate({"opacity": 0.8});
  //   $(".category-name").hide();
  // });

  // $(".cat-container").hover(function(){
  //   $(".category-name").show();
  //     }, function() {
  //   $(".category-name").stop().hide();
  // });

});

