$(document).ready ->
  # $('.add-image-field').on 'click', @addImageField
  $('.add-summary-field').on 'click', @addSummaryField

  # addImageField: (event) ->
  #   event.preventDefault()
  #   $lastImageField = $('input[name="project[images][]"]:last-of-type').clone()
  #   $lastImageField.val("")
  #   $(".input.project_images").append($lastImageField)

  addSummaryField: (event) ->
    event.preventDefault()
    $lastSummaryField = $('input[name="project[summarys][]"]:last-of-type').clone()
    $lastSummaryField.val("")
    $(".input.project_summaries").append($lastSummaryField)
