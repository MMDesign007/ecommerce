$(document).ready(function() {
  $("#signup-link").on('click', function(event){
    event.preventDefault()
    console.log("click click")

    var request = $.ajax({
      url: "/users/new",
      type: "get"
    })
    request.done(function(response){
      console.log(response)

    $("#signup-link").hide()
    $(".container").append(response)
    })
  })


});
