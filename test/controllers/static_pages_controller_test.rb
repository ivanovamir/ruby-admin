require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = 'Ruby on Rails Tutorial Sample App'
  end

  test 'should get home' do
    get '/'
    assert_response :success
    assert_select 'title', 'Ruby on Rails Tutorial Sample App'
  end

  test 'should get help' do
    get '/help'
    assert_response :success
    assert_select 'title', "Help | #{@base_title}"
  end

  test 'should get about' do
    get '/about'
    assert_response :success
    assert_select 'title', "About | #{@base_title}"
  end
  test 'should get contact' do
    get '/contact'
    assert_response :success
    assert_select 'title', "Contact | #{@base_title}"
  end
  test 'should get signup' do
    get '/signup'
    assert_response :success
    assert_select 'title', "Sign up | #{@base_title}"
  end
end
