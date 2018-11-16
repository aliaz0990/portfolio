# frozen_string_literal: true

class ContactMailer < ApplicationMailer
  default from: 'noreply@portfolio.com'
  layout 'mailer'

  def contact_email(contact)
    @contact = contact
    mail(to: @contact.email, subject: 'Thanks for write me!!')
  end
end
