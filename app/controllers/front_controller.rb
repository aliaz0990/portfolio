# frozen_string_literal: true

class FrontController < ApplicationController
  def index; end

  def resume; end

  def portfolio; end

  def contact; end

  def feedback
    @contact = Contact.new
  end

  def send_email
    @contact = Contact.new(set_params)
    if @contact.save
      ContactMailer.contact_email(@contact).deliver
      redirect_to( feedback_path, notice: "Email Send, Thank You" )
    else
      render action: feedback, alert: "Your email isn't send, try again!!"
    end
  end

  def payments; end

  private
  def set_params
    params.require(:contact).permit(:name, :email, :subject, :content)
  end

end
