class PaymentsController < ApplicationController
	def create
		token = params[:stripeToken]

		begin
			charge = Stripe::Charge.create(
				:amount => 2000,
				:currency => "usd",
				:source => token,
				:description => params[:stripeEmail]
			)
		rescue Stripe::CardError => e

			body = e.json_body
			err = body[:error]
			flash[:error] = "There was an error. Please try again. #{err[:message]} "
		end
        UserMailer.order_email(@first_name, @email).deliver
        redirect_to products_path()
    
	end
end