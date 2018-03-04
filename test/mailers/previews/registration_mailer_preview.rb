# Preview all emails at http://localhost:3000/rails/mailers/registration_mailer
class RegistrationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/registration_mailer/request

  def request
    registration = Registration.new name: 'Omar',
                                    email: 'omar@thebigbadwolf.com',
                                    phone: '555-555-5555',
                                    role: 'Driver',
                                    income: 'More than $100,000',
                                    status: 'Contractor',
                                    body: 'Omar dont play that.'

    RegistrationMailer.request registration
  end
end
