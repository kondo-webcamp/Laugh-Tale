class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_details

  enum payment_method: { credit_card: 0, transfer: 1 }
  enum status: {"入金待ち": 0,"入金確認": 1,"製作中": 2,"発送準備中": 3, "発送済み": 4}
  enum making_status: {"制作不可": 0,"制作待ち": 1,"制作中": 2,"制作完了": 3}

  def address_displays
  '〒' + postal_code + ' ' + address + ' ' + name
  end
end
