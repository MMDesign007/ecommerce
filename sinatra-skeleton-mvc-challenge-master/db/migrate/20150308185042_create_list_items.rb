class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.belongs_to :product
      t.belongs_to :cart
    end
  end
end
