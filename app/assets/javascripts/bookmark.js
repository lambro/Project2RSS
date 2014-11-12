
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
  console.log($articleId)
  // isDone = $this.is(":checked")
  request("POST", "/bookmarks", {
    bookmark:{
    article_id: $articleId,
  }
  }).success(function(data){
    console.log(data)
    // append .unbookmark
  })
}

$(function(){
  $('body').on('click', '.bookmark-article', bookmark);
  // $('body').on('click', '.unbookmarked', unBookmark);
})