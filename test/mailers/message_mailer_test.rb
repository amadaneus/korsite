require 'test_helper'

class MessageMailerTest < ActionMailer::TestCase
  test "contact" do
    message = Message.new name: 'cornell',
                          email: 'cornell@test.com',
                          body: 'Hey are you available?'

    email = MessageMailer.contact(message)

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal "Message from www.keeponrollingtaxes.com", email.subject
    assert_equal ["hey@example.com"], email.to
    assert_equal ["cornell@test.com"], email.from
    assert_match /Hey are you available?/, email.body.encoded
  end

end
