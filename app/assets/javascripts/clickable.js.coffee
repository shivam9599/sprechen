$(".clickable").click ->
  url = $(this).data('url')
  window.location = url

$(".closable").click ->
  $(this).fadeOut();

showFlash = ->
  $("#flash").slideDown(500).delay(1000).slideUp(500)

showFlash() if $("#flash")