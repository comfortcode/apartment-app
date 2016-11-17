class ContactMailer < ApplicationMailer
    def contact_form_email(name, email, phone, message)
    @name = name
    @email = email
    @phone = phone
    @message = message
    mail(to: 'hello@ramateshkolapartments.com', subject: 'Contact Form', body: 'name: will go here')
  end
end