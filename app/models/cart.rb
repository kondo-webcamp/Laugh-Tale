class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy
       #    カートアイテムの追加
      def add_item(item_id:, amount:)
        # カートに入っていない商品を追加する場合はItemレコードを新規作成
        item = items.find_by(item_id: item_id) || items.build(item_id: item_id)
        item.amount += amount.to_i
        item.save
      end
    
      #    カートアイテムの更新
      def update_item(item_id:, amount:)
        items.find_by(item_id: item_id).update(amount: amount.to_i)
      end
    
      #    カートアイテムの削除
      def delete_item(item_id:)
        items.find_by(item_id: item_id).destroy
      end
    
      #    カートの合計の算出
      def total_price
        items.sum("amount*price")
      end
 
end
