class Order < ActiveRecord::Base
    belongs_to :product
    belongs_to :user
    
    private
        def order_email 
            UserMailer.order_email(self).deliver
    end
end
