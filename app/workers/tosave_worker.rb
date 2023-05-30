class TosaveWorker
	include Sidekiq::Worker
	sidekiq_options retry: false
    
  def perform(book_id)
  	debugger
    BookMailer.book_send(book_id).deliver_later
  end

end
