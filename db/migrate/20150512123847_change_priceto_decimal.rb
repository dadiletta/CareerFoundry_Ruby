class ChangePricetoDecimal < ActiveRecord::Migration
  def change
      Product.all.each do |p|
          p.price = 
          begin 
              Float(p.price) 
          rescue
              0.0 
        end
          p.save
      end
      change_column :products, :price, :decimal
  end
end
