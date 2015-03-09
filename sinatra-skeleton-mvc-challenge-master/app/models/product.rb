class Product < ActiveRecord::Base
  belongs_to :category

  has_many   :lineitems
  has_many   :carts, through: :lineitems
  has_many   :purchasers, through: :carts
end
