# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

  returns_qty = 0
  
  $(".slide_content").keyup (e) ->
    if e.keyCode == 13
      returns_qty+= 1
      if returns_qty == 2
        returns_qty = 0
        #$("#new_anonymous_slide").submit()
        #alert "got two submits"
        $('input[type=submit]').closest("form").submit()
    else
      returns_qty = 0

