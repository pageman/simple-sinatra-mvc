require_relative '../test_helper'

class HomeTest < MiniTest::Unit::TestCase

  include Rack::Test::Methods

  def app() Sinatra::Application end

  def test_hello_world
    get '/'
    assert last_response.ok?
    assert last_response.body.include?('Sinatra'), "Should include Sinatra"
  end
end
