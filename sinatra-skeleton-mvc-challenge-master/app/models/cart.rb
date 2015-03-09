class Cart < ActiveRecord::Base
  has_many :lineitems
  has_many :products, through: :lineitems

  belongs_to :purchaser, class_name: "User"
end
