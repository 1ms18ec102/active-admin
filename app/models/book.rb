class Book < ApplicationRecord
	has_many :reviews
	has_one_attached :image

	after_create :send_mail

	private

	def send_mail
		# debugger
		TosaveWorker.perform_async(self.id)
		# BookMailer.book_send(book_id).deliver_later
	end
end
