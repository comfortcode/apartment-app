class ContactMailer < ApplicationMailer
    def contact_form_email(name, email, phone, message)
    @name = name
    @email = email
    @phone = phone
    @message = message
    mail(to: 'nechamabgoldman@gmail.com', subject: 'Contact Form', body: 'name: #{@name}')
  end
end