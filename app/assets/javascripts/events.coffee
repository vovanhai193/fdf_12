$(document).ready ->
  $('#notifications-dropdown').click ->
    $.ajax
      type: 'PUT'
      url: '/events'
      dataType: 'json'
      success: (data) ->
        $('#notification_count').fadeOut 'slow'
