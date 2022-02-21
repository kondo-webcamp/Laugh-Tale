class Item < ApplicationRecord

  has_many :cart_items
  has_many :order_details
  belongs_to :genres

  has_one_attached :image

   def get_image
    if image.attached?
      image
    else
      'no_image.jpg'
    end
   end
end


