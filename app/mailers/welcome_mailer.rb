class WelcomeMailer < ApplicationMailer
	
	def welcome_send(user)
		@user=user
		mail to: user.email, subject: "Welome", from: "1ms18ec102@gmail.com"
	end	

end
