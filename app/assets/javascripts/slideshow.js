$(document).ready(function(){
  var slides = jQuery.makeArray( $('section') );
  var current_slide = slides[0];
  var next_slide = slides[slides.indexOf(current_slide) + 1];

  $.each( slides, function( index, value ) {
    if(index){
      $(slides[index]).hide();
    }      
  });

  $('body').keyup(function(key){
    // 32 = space bar
    if(key.which == 32){
      $(current_slide).hide();
      $(next_slide).show();
      current_slide = next_slide;
      next_slide = slides[slides.indexOf(current_slide) + 1];
    }
  });
});

