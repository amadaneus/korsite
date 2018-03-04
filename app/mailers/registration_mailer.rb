class RegistrationMailer < ApplicationMailer

  def screen(registration)
    @name = registration.name
    @phone = registration.phone
    @email = registration.email
    @role = registration.role
    @income = registration.income
    @status = registration.status
    @body = registration.body

    mail to: "hey@example.org", from: registration.email
  end
end