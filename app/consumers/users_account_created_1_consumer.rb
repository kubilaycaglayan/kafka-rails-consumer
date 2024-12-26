class UsersAccountCreated1Consumer < ApplicationConsumer
  def consume
    messages.each do |message|
      Rails.logger.info "Received message: #{message.payload}"
    end
  end
end