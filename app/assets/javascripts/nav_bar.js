$(function(){

  $("#show_hide").click(function(){
    console.log("clicked")
    $("#menu_items").slideToggle();
    $('#show_hide').toggleClass('fa-rotate-90')
  })

  $(".header p").click(function(){
    console.log("clicked")
    $("#menu_items").slideToggle();
    $('#show_hide').toggleClass('fa-rotate-90')
  })
})



