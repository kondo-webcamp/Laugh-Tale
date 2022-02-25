class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_details

  enum payment_method: { credit_card: 0, transfer: 1 }
  enum status: { wait_pay: 0, check_pay: 1, in_production: 2, preparing_ship: 3, shipped: 4 }


  def address_displays
  '〒' + postal_code + ' ' + address + ' ' + name
  end
end
