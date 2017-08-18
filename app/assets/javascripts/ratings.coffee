$( document ).on 'turbolinks:load', ->
  $('.star-rating').raty('destroy');
  $( '.star-rating' ).raty
    path: '/public/images/ratyrate',
    readOnly: true,
    score: ->
      $( this ).attr( 'data-score' )
  return
