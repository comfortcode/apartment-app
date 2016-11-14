class WelcomeMailerPreview < ActionMailer::Preview
  def welcome_mailer_preview
    WelcomeMailer.sample_email(User.first)
  end
end