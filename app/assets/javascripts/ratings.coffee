$( document ).on 'turbolinks:load', ->
  $( '.star-rating' ).raty
    path: '/assets',
    readOnly: true,
    score: ->
      $( this ).attr( 'data-score' )
  return
