class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string     :menu,           null:false
      t.integer    :price,          null:false
      t.text       :introduction,   null:false  
      t.string     :shop_name,      null:false
      t.integer    :category_id,    null:false
      t.text       :eco_appeal,     null:false

      t.timestamps
    end
  end
end
