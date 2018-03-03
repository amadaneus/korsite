class MessageMailer < ApplicationMailer

  def contact(message)
    @body = message.body

    mail to: "hey@example.com", from: message.email
  end
end
