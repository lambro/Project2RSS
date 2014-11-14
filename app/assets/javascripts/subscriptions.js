
function request(method, url, data){
  return $.ajax({
    method: method,
    url: url,
    dataType: "json",
    data: data,
  })
}

function subscribe(){
  $this = $(this)
  $feedId = $this.data("id");
  console.log('clicked')
  request("POST", "/subscriptions", {subscription:{feed_id:$feedId}}).success(function(data){
    console.log(data)
    $this.removeClass('subscription-feed')
    $this.addClass('subscribed')
    $this.data('id', data.id)
  })
}

function unSubscribe(){
  $this = $(this)
  $subsId = $this.data("id");
  request("DELETE", "/subscriptions/"+ $subsId, null).success(function(data){

    $this.removeClass('subscribed')
    $this.addClass('subscription-feed')
    console.log('hello')
})
}
   

$(function(){
  $('body').on('click', '.subscription-feed', subscribe);
  $('body').on('click', '.subscribed', unSubscribe);

})