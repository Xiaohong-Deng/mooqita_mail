# Preview all emails at http://localhost:3000/rails/mailers/sample_mailer
class SampleMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/sample_mailer/greeting_mail
  def greeting_mail
    SampleMailer.greeting_mail("from@example.com")
  end

end
