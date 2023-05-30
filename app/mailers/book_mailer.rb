class BookMailer

	def book_send(book)
		# @user=user
		@book=book
		mail to: "abc@mail.com", subject: "book_added", from: "1ms18ec102@gmail.com"
	end	

end