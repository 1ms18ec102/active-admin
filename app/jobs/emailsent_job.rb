class EmailsentJob < ApplicationJob
  queue_as :default

  def perform(book_id)
    BookMailer.book_send(book_id).deliver_later
  end
end
