require 'test_helper'

class QuoteMailerTest < ActionMailer::TestCase
  test "request_confirmation" do
    mail = QuoteMailer.request_confirmation
    assert_equal "Request confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
