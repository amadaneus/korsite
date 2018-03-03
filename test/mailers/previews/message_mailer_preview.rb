# Preview all emails at http://localhost:3000/rails/mailers/message_mailer
class MessageMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/message_mailer/contact
  def contact
    message = Message.new name: 'Omar',
                          email: 'omar@thebigbadwolf.com',
                          body: 'Omar dont play that.'

    MessageMailer.contact message
  end

end
