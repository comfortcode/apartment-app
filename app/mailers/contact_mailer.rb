class ContactMailer < ApplicationMailer
    def contact_form_email(name, email, phone, message)
    @name = name
    @email = email
    @phone = phone
    @message = message
    @recipient = ENV['ADMIN_EMAIL']
    mail(to: @recipient, subject: 'Contact Form', body: 'name: will go here')
  end
end