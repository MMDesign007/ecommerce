class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :purchaser
    end
  end
end
