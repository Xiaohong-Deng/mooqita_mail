class StaticPagesController < ApplicationController
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  def home
  end

  def send_mail
    email = VALID_EMAIL_REGEX.match(params[:session][:email])
    if email.nil?
      flash[:alert] = "Invalid email address. Greeting mail has not been sent."
    else
      SampleMailer.greeting_mail(email).deliver_now
      flash[:success] = "Greeting mail has been successfully sent, please check your email."
    end

    redirect_to root_url
  end
end
