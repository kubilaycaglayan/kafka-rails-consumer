class NewTopicConsumer < ApplicationConsumer
  def consume
    messages.each do |message|
      # Log the message to console
      # Rails.logger.info "Received message: #{message.payload}"

      Rails.logger.info message.raw_payload

      # Access message metadata if needed
=begin
      Rails.logger.info "Topic: #{message.topic}"
      Rails.logger.info "Partition: #{message.partition}"
      Rails.logger.info "Offset: #{message.offset}"
=end
    end
  end
end