App.product = App.cable.subscriptions.create 'NotificationChannel',
  connected: ->

  disconnected: ->

  received: (event) ->
    $('#events').prepend "<div class='event'>#{event.message}</div>"
    number = Number($('#notification_count').text()) + 1;
    $('#notification_count').html(number)
