class WelcomeMailer < ApplicationMailer
	
	def welcome_send(user)
		@user=user
		mail to: user.email, subject: "Welome", from: "info@project.com"
	end	

end
