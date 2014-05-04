$(document).ready ->

  returns_qty = 0
  
  $(".slide_content").keyup (e) ->
    if e.keyCode == 13
      returns_qty+= 1
      if returns_qty == 2
        # alert "two returns!"
        
        returns_qty = 0
    else
      returns_qty = 0