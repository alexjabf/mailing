class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(sender, email)
    @greeting = "Hola #{sender}"

    mail to: email,
      subject: @greeting
  end
end
