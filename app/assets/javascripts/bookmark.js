
function bookmark(){
  $this = $(this)
  articleId = $this.data("id");
  isDone = $this.is(":checked")
  request("POST", "/taskb/"+taskId, {task:{done: isDone}}).success(function(){
    $this.parent().toggleClass("completed")
  })
}