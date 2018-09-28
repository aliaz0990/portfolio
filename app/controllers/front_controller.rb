# frozen_string_literal: true

class FrontController < ApplicationController
  def index; end

  def resume; end

  def portfolio; end

  def contact; end

  def feedback; end

  def send_email
    @contact = Contact.new(params[:contact])
    if @contact.save
      ContactMailer.contact_email(@contact).deliver
      redirect_to(@contact, notice: "Email Send, Thank You")
    else
      render action: feedback
    end
  end

  def payments; end
end
