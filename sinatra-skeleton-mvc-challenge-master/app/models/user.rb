class User < ActiveRecord::Base
  has_many :carts, foreign_key: :purchaser_id
  has_many :lineitems, through: :carts
  has_many :products, through: :lineitems


  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end


end
