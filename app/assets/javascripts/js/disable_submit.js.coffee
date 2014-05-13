# if qty of required fields is 0 OR if filled_required_fields == required_fields, remove disabled attribute, else add it

# on key up
# if filled_required_fields < required_fields, disable, else enable

$(document).ready ->
  total_required_fields = 0
  filled_required_fields = 0

  # disable if least one required-field class
  if $(".required-field")[0]
    $("input[type='submit']").attr("disabled", "disabled")

  $( ".required-field" ).each ->
    total_required_fields += 1
    
    if $(this).val().trim().length != 0
      filled_required_fields += 1

  if (total_required_fields == 0 || filled_required_fields == total_required_fields)
    $( "input[type='submit']" ).removeAttr "disabled"
  else
    $("input[type='submit']").attr("disabled", "disabled")

  $(".required-field").keyup ->
    filled_required_fields = 0

    $( ".required-field" ).each ->
      if $(this).val().trim().length > 0
        filled_required_fields +=1

    if filled_required_fields == total_required_fields
      $( "input[type='submit']" ).removeAttr "disabled"
    else
      $("input[type='submit']").attr("disabled", "disabled")