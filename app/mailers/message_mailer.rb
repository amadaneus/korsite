class MessageMailer < ApplicationMailer

  def contact(message)
    @name = message.name
    @email = message.email
    @body = message.body

    mail to: ENV["EMAIL_USER"], reply_to: message.email, from: ENV['EMAIL_USER'], subject: "New Message from Keep On Rolling"
  end
end
