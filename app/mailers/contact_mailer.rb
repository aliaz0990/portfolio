class ContactMailer < ApplicationMailer
default from: 'any_from_address@example.com'

  def contact_email(contact)
    @contact = contact
    mail( to: 'aliriodiaz111@gmail.com',
      subject: 'Email From my Portfolio Web')
  end
end
