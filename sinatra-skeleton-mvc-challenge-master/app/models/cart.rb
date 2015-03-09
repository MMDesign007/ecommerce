class Cart < ActiveRecord::Base
  belongs_to :purchaser, class_name: "User", foreign_key: :purchaser_id
  has_many   :list_items
  has_many   :products, through: :list_item
end
