# frozen_string_literal: true

Sneakers.configure(
  amqp: "amqp://#{ENV['RABBITMQ_USERNAME']}:#{ENV['RABBITMQ_PASSWORD']}@#{ENV['RABBITMQ_HOSTNAME']}:5672"
)

Sneakers.logger.level = Logger::INFO
