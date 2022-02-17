class CartItem < ApplicationRecord
  belongs_to :item
  # belongs_to :cart



  # カート内の商品合計に利用
  def sum_of_price
    item.price * quantity
  end
end
