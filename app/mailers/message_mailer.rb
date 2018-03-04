class MessageMailer < ApplicationMailer

  def contact(message)
    @name = message.name
    @email = message.email
    @body = message.body

    mail to: "hey@example.com", from: message.email
  end
end
