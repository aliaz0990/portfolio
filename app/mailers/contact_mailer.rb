class ContactMailer < ApplicationMailer
  default from: 'from@example.com'
  layout 'mailer'

  def contact_email(contact)
    @contact = contact
    mail( to: @contact.email, 
      subject: "Thanks for write me!!")
  end
end
