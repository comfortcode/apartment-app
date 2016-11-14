class WelcomeMailer < ApplicationMailer
  def success_email(user, apartment)
    @user = user
    @apartment = apartment
    mail(to: @user.email, subject: 'Your Rockin Apartment Listing')
  end
end