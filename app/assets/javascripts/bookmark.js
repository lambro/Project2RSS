function request(method, url, data){
  return $.ajax({
    method: method,
    url: url,
    dataType: "json",
    data: data,
  })
}


function bookmark(){
  $this = $(this)
  $articleId = $this.data("id");

  request("POST", "/bookmarks", {
    bookmark:{
    article_id: $articleId,
    }
  }).success(function(data){
    $this.removeClass('bookmark-article')
    $this.addClass('bookmarked')
    $this.data('id', data.id)
    console.log(data.id)
  })
}

function unBookmark(){
  $this = $(this)
  $bookmarkId = $this.data("id");

  console.log($bookmarkId)
  request("PUT", "/bookmarks/"+ $bookmarkId, {
    bookmark:{
    is_bookmarked: false,
    }
  }).success(function(){
    console.log('hey')
    $this.removeClass('bookmarked')
    $this.addClass('rebookmark')
    $this.data('id', $bookmarkId)
  })
}

function reBookmark(){
  $this = $(this)
  $bookmarkId = $this.data("id");
  request("PUT", "/bookmarks/"+ $bookmarkId, {
    bookmark:{
    is_bookmarked: true,
    }
  }).success(function(){
    $this.removeClass('rebookmark')
    $this.addClass('bookmarked')
  })
}

$(function(){
  $('body').on('click', '.bookmark-article', bookmark);
  $('body').on('click', '.bookmarked', unBookmark);
  $('body').on('click', '.rebookmark', reBookmark);
})