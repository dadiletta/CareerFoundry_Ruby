class StaticPagesController < ApplicationController
    def index
        #@featured_product = Product.first
        @products = Product.limit(3)
    end
    
    def thank_you
      @name = params[:name]
      @email = params[:email]
      @message = params[:message]
      UserMailer.contact_form(@email, @name, @message).deliver
      ActionMailer::Base.mail(:from => @email, 
            :to => 'your-email@example.com', 
            :subject => "A new contact form message from #{@name}", 
            :body => @message).deliver
    end

end

