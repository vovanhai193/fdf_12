class Order < ApplicationRecord
  attr_accessor :cart
  acts_as_paranoid
  belongs_to :user
  belongs_to :shop
  belongs_to :coupon
  has_many :order_products, dependent: :destroy
  enum status: {pending: 0, confirm: 1}
  delegate :name, to: :shop, prefix: :shop
  delegate :name, to: :user, prefix: :user, allow_nil: true
  delegate :name, to: :coupon, prefix: :coupon, allow_nil: true

  after_create :build_order_products

  scope :by_date_newest, ->{order created_at: :desc}

  ransacker :created_at do
    Arel.sql("date(created_at)")
  end

  scope :between_date, -> begin_date, end_date do
    where(created_at: begin_date..end_date).
      group_year.group_month.group_day
  end

  scope :group_day_this_week, -> do
    where(created_at: Time.now.beginning_of_week..Time.now.end_of_week).
      group_month.group_day
  end

  scope :group_week_this_month, -> do
    where(created_at: Time.now.beginning_of_month..Time.now.end_of_month).
      group_month.group "EXTRACT(week FROM created_at)"
  end

  scope :group_month_this_year, -> do
    where(created_at: Time.now.beginning_of_year..Time.now.end_of_year).
      group_year.group_month
  end

  scope :group_year , -> {group "EXTRACT(year FROM created_at)"}
  scope :group_month, -> {group "EXTRACT(month FROM created_at)"}
  scope :group_day, -> {group "EXTRACT(day FROM created_at)"}

  def build_order_products
    cart.items.each do |item|
      order_products.create product_id: item.product_id,
        quantity: item.quantity
    end
  end

  class << self
    def build_data_chart user_shops, category_statistic
      order_chart = case category_statistic
      when "current_week"
        map_hash user_shops, :group_day_this_week
      when "current_month"
        map_hash user_shops, :group_week_this_month
      when "current_year"
        map_hash user_shops, :group_month_this_year
      when "year"
        map_hash user_shops, :group_year
      else
        map_hash user_shops, :group_day_this_week
      end
    end

    def build_data_between_date user_shops, begin_date, end_date
      user_shops.map do |shop|
        {name: shop.name, data: shop.orders.
          between_date(begin_date, end_date).count}
      end
    end

    def map_hash user_shops, method_send
      user_shops.map do |shop|
        {name: shop.name, data: shop.orders.send(method_send).count}
      end
    end
  end
end
