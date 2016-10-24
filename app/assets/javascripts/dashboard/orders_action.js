$(document).ready(function() {
  $('#checkbox').change(function() {
    if (this.checked) {
      $('.checkbox-abc').attr('checked', true);
    } else {
      $('.checkbox-abc').attr('checked', false);
    }
  });

  $('.status-order').change(function() {
    itemId = $(this).parent().parent().children()[0].value;
    var selectedValue = $( '#status-order-'+ itemId +' option:selected' ).text()
    var classes = ['label-info', 'label-warning', 'label-danger', 'label-primary'];
    var actions = ['pending', 'accepted', 'rejected', 'done'];
    var shopId = $('#shop-id').val();
    $.ajax({
      url : '/dashboard/shops/' + shopId + '/order_products/' + itemId,
      type: 'PUT',
      dataType: 'json',
      data: {
        order_product: {
          status: selectedValue
        }
      },
      success: function() {
        var klass = '.order-product-status-' + itemId + ' span';
        $(klass).text(selectedValue);
        var currentClass = $(klass).attr('class').split('')[1];
        $(klass).removeClass(currentClass).addClass(classes[actions.indexOf(selectedValue)]);
      },
      error: function(error_message) {
        alert(error);
      }
    });

$(document).on("click", ".step2", function() {
  $("#stars").addClass("btn-default");
  $("#stars").removeClass("btn-primary");
  $("#favorites").removeClass("btn-default");
  $("#favorites").addClass("btn-primary");
});

$(document).on("click", ".step1", function() {
  $("#favorites").addClass("btn-default");
  $("#favorites").removeClass("btn-primary");
  $("#stars").removeClass("btn-default");
  $("#stars").addClass("btn-primary");
});

$(document).ready(function() {
  $('#id_btn_done').click(function() {
   $('.done-action').hide();
  });
});

$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').focus()
})
