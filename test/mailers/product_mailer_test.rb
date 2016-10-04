require 'test_helper'

class ProductMailerTest < ActionMailer::TestCase
  test "news_letter" do
    mail = ProductMailer.news_letter
    assert_equal "News letter", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
