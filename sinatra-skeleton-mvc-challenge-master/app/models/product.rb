class Product < ActiveRecord::Base
belongs_to :category
has_many   :list_items
has_many   :carts, through: :list_items
end
