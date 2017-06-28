class SampleMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.sample_mailer.greeting_mail.subject
  #
  def greeting_mail(email)
    mail to: email, subject: "Greetings from Mooqita Challenge"
  end
end
