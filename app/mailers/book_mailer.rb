class BookMailer < ApplicationMailer
	def book_send(book_id)
		@book=book_id
		mail(to: "abc@mail.com", subject: 'Book Created', from: "savanawanti@gamil.com")
	end
end
