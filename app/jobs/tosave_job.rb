class TosaveJob < ApplicationJob
 queue_as :default
    
  def perform(book_id)
  	# debugger
    BookaddMailer.book_send(current_user, book_id).deliver_later
  end

end
