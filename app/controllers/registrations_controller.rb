class RegistrationsController < ApplicationController
  layout 'application'

  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new registration_params

    if @registration.valid?
      RegistrationMailer.screen(@registration).deliver!
      redirect_to new_registration_path, notice: "Message received, we'll contact you within 48 hours! Thank you."
    else
      render :new
    end
  end

  private

  def registration_params
    params.require(:registration).permit(:name, :phone, :email, :role, :income, :status, :body)
  end
end
