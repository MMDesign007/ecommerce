class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string      :name
      t.integer     :price
      t.belongs_to  :category
    end
  end
end
