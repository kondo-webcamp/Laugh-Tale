class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_details
  
  enum payment_method: { credit_card: 0, transfer: 1 }
  enum status: { stay:0 , check:1 , kkk:2 , uuu:3 ,ttt:4 }


  def address_displays
  '〒' + postal_code + ' ' + address + ' ' + name
  end
end
