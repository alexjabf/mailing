class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  default from: "Desafio Latam"
  def welcome(user)
    @user = user
    @greeting = "Hola #{user.name}"

    mail to: user.email,
      subject: @greeting
  end
end
