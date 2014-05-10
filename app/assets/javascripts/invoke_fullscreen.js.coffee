$(document).ready ->

  # $(document).bind "fullscreenchange", (e) ->
  #   if ($(document).fullScreen(true))
  #     $(".edit-control").hide()
  #   else
  #     $(".edit-control").show()

  # {
  #      console.log("Full screen changed.");
  #      $("#status").text($(document).fullScreen() ? 
  #          "Full screen enabled" : "Full screen disabled");
  #   });
  # $(document).bind "fullscreenchange", (e) ->
  #      $(".edit-control").hide($(document).fullScreen() ? 
  #          "Full screen enabled" : "Full screen disabled");
  #   });

  $(".fullscreen").click ->
    $(document).fullScreen(true)
    $(".edit-control").hide()