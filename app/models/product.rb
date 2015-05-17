class Product < ActiveRecord::Base
    has_many :orders #does not give a function of orders to product
end
