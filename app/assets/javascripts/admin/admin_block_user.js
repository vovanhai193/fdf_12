$(document).ready(function() {
  $('.btn_block').on('click', function() {
    statusNow = $(this).val();
    btn = $(this);
    statusChange = (statusNow === 'blocked') ? 'active' : 'blocked';
    parent = $(this).parent(),
    userId =  parent.children()[0].value,
    $.ajax({
      type: 'PUT',
      url : '/admin/users/' + userId,
      dataType: 'json',
       data: {
        user: {
          status: statusChange
        }
      },
      success: function(data) {
        btn.val(statusChange);
      },
      error: function(error_message) {
        alert('error ' + error_message);
      }
    });
  });
});
