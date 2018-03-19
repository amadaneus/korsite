class RegistrationMailer < ApplicationMailer

  def screen(registration)
    @name = registration.name
    @phone = registration.phone
    @email = registration.email
    @role = registration.role
    @income = registration.income
    @status = registration.status
    @body = registration.body

    mail to: ENV["EMAIL_USER"], from: registration.email, subject: "New Client Registration from Keep on Rolling"
  end
end