class ChangePricetoDecimal < ActiveRecord::Migration
  def change
      drop_table :products
      
      create_table :products do |t|
          t.string :name
          t.text :description
          t.string :image_url
          
          t.timestamps
      end
      add_column :products, :price, :decimal
  end
end
