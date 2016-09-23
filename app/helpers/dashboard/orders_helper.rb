module Dashboard::OrdersHelper
  def status_order order
    if order.confirm?
      change_status order, "label-warning"
    else
      change_status order, "label-danger"
    end
  end

  def change_status order, label_class
    content_tag :span, order.status, class: "label #{label_class}"
  end

  def option_status status, order
    content_tag(:option, value: dashboard_shop_order_path(@shop, order,
      order: {status: status}),
      selected: check_status?(status, order.status)) do
      status
    end
  end

  def check_status? status, confirm_order
    status == confirm_order
  end
end
