require 'test_helper'

class SampleMailerTest < ActionMailer::TestCase
  test "greeting_mail" do
    mail = SampleMailer.greeting_mail
    assert_equal "Greeting mail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
