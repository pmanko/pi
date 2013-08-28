$.fn.toggleErrors = (e) ->
  $(e.target).prev(".panel-heading").find("i.indicator").toggleClass "glyphicon-plus glyphicon-minus"

$ ->
  $(document).on('hidden.bs.collapse', '#errorList', $.fn.toggleErrors)
  $(document).on('shown.bs.collapse', '#errorList', $.fn.toggleErrors)
