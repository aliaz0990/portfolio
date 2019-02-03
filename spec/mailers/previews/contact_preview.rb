# frozen_string_literal: true

# Preview all emails at http://localhost:3000/rails/mailers/contact

class ContactPreview < ActionMailer::Preview
  def contact_email
    contact = Contact.first
    ContactMailer.contact_email(contact)
  end
end
