class CreateLineitems < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
      t.references :product
      t.references :cart
    end
  end
end
