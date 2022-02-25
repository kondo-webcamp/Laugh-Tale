class OrderDetail < ApplicationRecord
  belongs_to :item
  belongs_to :order
  enum making_status: {  not_startable: 0, waiting_production: 1, now_production: 2, finish_production: 3}
  
  
end
