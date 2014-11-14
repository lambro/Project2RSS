function favourite(){
  $this = $(this);
  console.log("something")
  $this.removeClass('favouritebox');
  $this.addClass('favourited')
}

function unFavourite(){
  $this = $(this);
  $this.removeClass('favourited');
  $this.addClass('favouritebox')
}

$(function(){
  $('body').on('click', '.favouritebox', favourite);
  $('body').on('click', '.favourited', unFavourite);
})

