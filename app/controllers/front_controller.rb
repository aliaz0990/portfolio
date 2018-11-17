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
    if !verify_recaptcha(model: @contact) && @contact.save
      ContactMailer.contact_email(@contact).deliver
      ContactMailer.to_me(@contact).deliver
      redirect_to(feedback_path, notice: 'Your Email is sent, Thanks..!')
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
