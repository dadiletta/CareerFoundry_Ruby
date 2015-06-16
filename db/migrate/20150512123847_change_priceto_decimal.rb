lass ChangePriceToNumeric < ActiveRecord::Migration
    def change
        change_column :parts, :price, 'numeric USING CAST(price AS numeric)'
    end
end