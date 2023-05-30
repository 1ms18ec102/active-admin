class Book < ApplicationRecord
	has_many :reviews
	has_one_attached :image

	after_create :send_mail

	private

	def send_mail
		# debugger
		EmailsentJob.perform_later(self.id)
		# BookMailer.book_send(self.id).deliver_later
	end
end
