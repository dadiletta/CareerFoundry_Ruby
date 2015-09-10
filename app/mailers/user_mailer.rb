class UserMailer < ApplicationMailer
	default from: "from@example.com"

	def contact_form(email, name, message)
		@message = message
		mail(:from => email,
					:to => "noreply@aresdevelopment.net",
					:subject => "You have received a new contact form message from #{name}")
	end

    def welcome_email(user)
        mail(:from => "noreply@aresdevelopment.net",
             :to => user.email)
	end 
    
    def registration(first_name, email)
    	@first_name = first_name
         mail(:from => "noreply@aresdevelopment.net",
         			:to => "#{email}")
	end
end