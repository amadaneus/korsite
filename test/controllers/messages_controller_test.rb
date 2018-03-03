require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest

  test "GET new" do
    get new_message_url

    assert_response :success

    assert_select 'form' do

      assert_select 'input[type=text]'
      assert_select 'input[type=email]'
      assert_select 'textarea'
      assert_select 'input[type=submit]'
    end
  end

  test "POST create" do
    assert_difference 'ActionMailer::Base.deliveries.size', 1 do
      post create_message_url, params: {
        message: {
          name: 'steven',
          email: 'mruniverse@example.net',
          body: 'yo sup'
        }
      }
    end
    assert_redirected_to new_message_url

    assert_match /Message received, we'll contact you within 48 hours! Thank you./, flash[:notice]
  end

  test "Invalid POST create" do
    post create_message_url, params: {
      message: {name: '', email: '', body: ''}
    }

    assert_match /Name .* blank/, response.body
    assert_match /Email .* blank/, response.body
    assert_match /Body .* blank/, response.body
  end
end