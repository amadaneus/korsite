class MessagesController < ApplicationController
  layout 'application'

  def new
    @message = Message.new
  end

  def create
    @message= Message.new message_params

    if @message.valid?
      MessageMailer.contact(@message).deliver_now
      redirect_to root_path, notice: "Message received, we'll contact you within 48 hours! Thank you."
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :phone, :email, :role, :income, :status)
  end
end
